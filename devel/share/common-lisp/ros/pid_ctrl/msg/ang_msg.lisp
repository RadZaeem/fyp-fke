; Auto-generated. Do not edit!


(cl:in-package pid_ctrl-msg)


;//! \htmlinclude ang_msg.msg.html

(cl:defclass <ang_msg> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (t
    :reader t
    :initarg :t
    :type cl:float
    :initform 0.0)
   (setpoint
    :reader setpoint
    :initarg :setpoint
    :type cl:float
    :initform 0.0))
)

(cl:defclass ang_msg (<ang_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ang_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ang_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pid_ctrl-msg:<ang_msg> is deprecated: use pid_ctrl-msg:ang_msg instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ang_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_ctrl-msg:x-val is deprecated.  Use pid_ctrl-msg:x instead.")
  (x m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <ang_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_ctrl-msg:t-val is deprecated.  Use pid_ctrl-msg:t instead.")
  (t m))

(cl:ensure-generic-function 'setpoint-val :lambda-list '(m))
(cl:defmethod setpoint-val ((m <ang_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_ctrl-msg:setpoint-val is deprecated.  Use pid_ctrl-msg:setpoint instead.")
  (setpoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ang_msg>) ostream)
  "Serializes a message object of type '<ang_msg>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'setpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ang_msg>) istream)
  "Deserializes a message object of type '<ang_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'setpoint) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ang_msg>)))
  "Returns string type for a message object of type '<ang_msg>"
  "pid_ctrl/ang_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ang_msg)))
  "Returns string type for a message object of type 'ang_msg"
  "pid_ctrl/ang_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ang_msg>)))
  "Returns md5sum for a message object of type '<ang_msg>"
  "292a905e671af67a6c65822b0e898330")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ang_msg)))
  "Returns md5sum for a message object of type 'ang_msg"
  "292a905e671af67a6c65822b0e898330")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ang_msg>)))
  "Returns full string definition for message of type '<ang_msg>"
  (cl:format cl:nil "float64 x~%float64 t~%float64 setpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ang_msg)))
  "Returns full string definition for message of type 'ang_msg"
  (cl:format cl:nil "float64 x~%float64 t~%float64 setpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ang_msg>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ang_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'ang_msg
    (cl:cons ':x (x msg))
    (cl:cons ':t (t msg))
    (cl:cons ':setpoint (setpoint msg))
))
