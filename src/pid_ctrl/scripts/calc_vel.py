#!/usr/bin/env python
# Software License Agreement (BSD License)
#
# Copyright (c) 2008, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of Willow Garage, Inc. nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Revision $Id$

## Simple talker demo that published std_msgs/Strings messages
## to the 'chatter' topic

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import *
from pid import *
from pid.msg import *
import os

import roslib
roslib.load_manifest('pid_ctrl')
from pid_ctrl.msg import *

global delta_t; delta_t = 0.001
global loop_rate # hz

global lin_vel, ang_vel # current state
global vel_in # get setpoint  
global lin_in_pub, ang_vel_pub 
global vel_out_pub
global pid_vel; pid_vel = Twist() # output to Arduino
global lin_state, ang_state

global lin_x_dot, ang_x_dot
global lin_u, ang_u
global lin_state_pub, ang_state_pub


global lin_state, ang_state
lin_state = lin_msg()
ang_state = ang_msg()
# left_speed = (v - e w) / R
# right_speed = (v + e w) / R
# e = 0.5shaftlength
def cb_vel_in(data):
    global vel_in 
    vel_in = data
    #lin_in_pub.publish(vel_in.linear.x)
    #ang_in_pub.publish(vel_in.angular.z)
    lin_state.setpoint = vel_in.linear.x
    ang_state.setpoint = vel_in.angular.z

    rospy.loginfo(rospy.get_caller_id() + "new velocity setpoint\n %s", data)

def cb_lin_effort(data):
    global lin_u, pid_vel, vel_out_pub
    lin_u = data.u
    pid_vel.linear.x = data.u
    vel_out_pub.publish(pid_vel) # To Arduino

def cb_ang_effort(data):
    global ang_u, pid_vel, vel_out_pub
    ang_u = data.u
    pid_vel.angular.z = data.u
    vel_out_pub.publish(pid_vel) # To Arduino
        
def cb_current_vel(data):
    global lin_vel, ang_vel
    lin_vel = data.twist.linear
    ang_vel = data.twist.angular
    lin_state.x = data.twist.linear.x
    ang_state.x = data.twist.angular.z

    rospy.loginfo(rospy.get_caller_id() + "from fovis, current velocity:\n %s", data)

def calc_vel():
    rospy.init_node('calc_vel', anonymous=True)
    rospy.loginfo(rospy.get_caller_id() + "  started.")

    # velocity request and velocity sensor
    cmd_vel_sub = rospy.Subscriber("cmd_vel", Twist, cb_vel_in)
    odom_sub = rospy.Subscriber("odom", Twist, cb_current_vel)

    # effort subs
    lin_effort = rospy.Subscriber("lin_effort", controller_msg, cb_lin_effort)
    ang_effort = rospy.Subscriber("ang_effort", controller_msg, cb_ang_effort)

    # state msgs to pid controller nodes
    global lin_state_pub, ang_state_pub, vel_out_pub
    lin_state_pub = rospy.Publisher('lin_state', lin_msg, queue_size=10)
    ang_state_pub = rospy.Publisher('ang_state', ang_msg, queue_size=10)
    # to Arduino
    vel_out_pub = rospy.Publisher('vel_out', Twist, queue_size=10)

    reset_values()
    start_pid_from_cli()
    global delta_t, loop_rate
    loop_rate = rospy.Rate(1/delta_t)
    while not rospy.is_shutdown():
        rospy.loginfo(rospy.get_caller_id() + \
                "\nlin_x: %f setpoint_x: %f\n ang_z: %f setpoint_z: %f\n",  
                    lin_state.x, lin_state.setpoint,
                    ang_state.x, ang_state.setpoint,    )
        simulate_update()
        loop_rate.sleep()

def reset_values():
    global lin_x_dot, ang_x_dot
    global lin_u, ang_u
    lin_state.x = 0
    lin_x_dot = 0
    lin_state.t = 0
    lin_u = 0
    lin_state.setpoint = 0
    ang_state.x = 0
    ang_x_dot = 0
    ang_state.t = 0
    ang_u = 0
    ang_state.setpoint = 0

def start_pid_from_cli():
    os.system("rosrun pid controller 1 6 .001 2000 \
        -nn linear_ctrl -tfc lin_effort -tfp lin_state -fc 1000 &")
    os.system("rosrun pid controller 1 6 .001 2000 \
        -nn angular_ctrl -tfc ang_effort -tfp ang_state -fc 1000 &")
    



def simulate_update():
    #global lin_x_dot, ang_x_dot
    global lin_u, ang_u
    global delta_t
    #lin_x_dot = 60 * (lin_state.x+lin_u); # first order plant eqn
    #lin_state.x = (lin_state.x+lin_x_dot) * delta_t;
    lin_state.x = lin_u
    lin_state.t = lin_state.t+delta_t;

    ang_state.x = ang_u
    ang_state.t = ang_state.t+delta_t;

    lin_state_pub.publish(lin_state)
    ang_state_pub.publish(ang_state)

#def real_update():
#    global lin_u, ang_u
#    global delta_t



if __name__ == '__main__':
    try:
        calc_vel()

    except rospy.ROSInterruptException:
        pass
