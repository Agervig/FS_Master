; Auto-generated. Do not edit!


(cl:in-package camera_control_msgs-srv)


;//! \htmlinclude GetIntegerValue-request.msg.html

(cl:defclass <GetIntegerValue-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetIntegerValue-request (<GetIntegerValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIntegerValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIntegerValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-srv:<GetIntegerValue-request> is deprecated: use camera_control_msgs-srv:GetIntegerValue-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIntegerValue-request>) ostream)
  "Serializes a message object of type '<GetIntegerValue-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIntegerValue-request>) istream)
  "Deserializes a message object of type '<GetIntegerValue-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIntegerValue-request>)))
  "Returns string type for a service object of type '<GetIntegerValue-request>"
  "camera_control_msgs/GetIntegerValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIntegerValue-request)))
  "Returns string type for a service object of type 'GetIntegerValue-request"
  "camera_control_msgs/GetIntegerValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIntegerValue-request>)))
  "Returns md5sum for a message object of type '<GetIntegerValue-request>"
  "2e594fdfa2675fb84aef8c993fb08db4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIntegerValue-request)))
  "Returns md5sum for a message object of type 'GetIntegerValue-request"
  "2e594fdfa2675fb84aef8c993fb08db4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIntegerValue-request>)))
  "Returns full string definition for message of type '<GetIntegerValue-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIntegerValue-request)))
  "Returns full string definition for message of type 'GetIntegerValue-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIntegerValue-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIntegerValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIntegerValue-request
))
;//! \htmlinclude GetIntegerValue-response.msg.html

(cl:defclass <GetIntegerValue-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetIntegerValue-response (<GetIntegerValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIntegerValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIntegerValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-srv:<GetIntegerValue-response> is deprecated: use camera_control_msgs-srv:GetIntegerValue-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetIntegerValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:value-val is deprecated.  Use camera_control_msgs-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetIntegerValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:success-val is deprecated.  Use camera_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetIntegerValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:message-val is deprecated.  Use camera_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIntegerValue-response>) ostream)
  "Serializes a message object of type '<GetIntegerValue-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIntegerValue-response>) istream)
  "Deserializes a message object of type '<GetIntegerValue-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIntegerValue-response>)))
  "Returns string type for a service object of type '<GetIntegerValue-response>"
  "camera_control_msgs/GetIntegerValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIntegerValue-response)))
  "Returns string type for a service object of type 'GetIntegerValue-response"
  "camera_control_msgs/GetIntegerValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIntegerValue-response>)))
  "Returns md5sum for a message object of type '<GetIntegerValue-response>"
  "2e594fdfa2675fb84aef8c993fb08db4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIntegerValue-response)))
  "Returns md5sum for a message object of type 'GetIntegerValue-response"
  "2e594fdfa2675fb84aef8c993fb08db4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIntegerValue-response>)))
  "Returns full string definition for message of type '<GetIntegerValue-response>"
  (cl:format cl:nil "int32 value		# returned value~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIntegerValue-response)))
  "Returns full string definition for message of type 'GetIntegerValue-response"
  (cl:format cl:nil "int32 value		# returned value~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIntegerValue-response>))
  (cl:+ 0
     4
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIntegerValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIntegerValue-response
    (cl:cons ':value (value msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIntegerValue)))
  'GetIntegerValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIntegerValue)))
  'GetIntegerValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIntegerValue)))
  "Returns string type for a service object of type '<GetIntegerValue>"
  "camera_control_msgs/GetIntegerValue")