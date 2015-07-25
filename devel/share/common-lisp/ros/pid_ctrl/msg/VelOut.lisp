; Auto-generated. Do not edit!


(cl:in-package pid_ctrl-msg)


;//! \htmlinclude VelOut.msg.html

(cl:defclass <VelOut> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type cl:float
    :initform 0.0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelOut (<VelOut>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelOut>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelOut)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pid_ctrl-msg:<VelOut> is deprecated: use pid_ctrl-msg:VelOut instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <VelOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_ctrl-msg:x-val is deprecated.  Use pid_ctrl-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <VelOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_ctrl-msg:y-val is deprecated.  Use pid_ctrl-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <VelOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_ctrl-msg:theta-val is deprecated.  Use pid_ctrl-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <VelOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_ctrl-msg:linear_velocity-val is deprecated.  Use pid_ctrl-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <VelOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_ctrl-msg:angular_velocity-val is deprecated.  Use pid_ctrl-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelOut>) ostream)
  "Serializes a message object of type '<VelOut>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelOut>) istream)
  "Deserializes a message object of type '<VelOut>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelOut>)))
  "Returns string type for a message object of type '<VelOut>"
  "pid_ctrl/VelOut")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelOut)))
  "Returns string type for a message object of type 'VelOut"
  "pid_ctrl/VelOut")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelOut>)))
  "Returns md5sum for a message object of type '<VelOut>"
  "863b248d5016ca62ea2e895ae5265cf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelOut)))
  "Returns md5sum for a message object of type 'VelOut"
  "863b248d5016ca62ea2e895ae5265cf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelOut>)))
  "Returns full string definition for message of type '<VelOut>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelOut)))
  "Returns full string definition for message of type 'VelOut"
  (cl:format cl:nil "float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelOut>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelOut>))
  "Converts a ROS message object to a list"
  (cl:list 'VelOut
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))
