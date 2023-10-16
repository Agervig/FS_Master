; Auto-generated. Do not edit!


(cl:in-package camera_control_msgs-srv)


;//! \htmlinclude GetFloatValue-request.msg.html

(cl:defclass <GetFloatValue-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFloatValue-request (<GetFloatValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFloatValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFloatValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-srv:<GetFloatValue-request> is deprecated: use camera_control_msgs-srv:GetFloatValue-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFloatValue-request>) ostream)
  "Serializes a message object of type '<GetFloatValue-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFloatValue-request>) istream)
  "Deserializes a message object of type '<GetFloatValue-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFloatValue-request>)))
  "Returns string type for a service object of type '<GetFloatValue-request>"
  "camera_control_msgs/GetFloatValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloatValue-request)))
  "Returns string type for a service object of type 'GetFloatValue-request"
  "camera_control_msgs/GetFloatValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFloatValue-request>)))
  "Returns md5sum for a message object of type '<GetFloatValue-request>"
  "43b10f831effee7a7ea5981fb2cf0b2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFloatValue-request)))
  "Returns md5sum for a message object of type 'GetFloatValue-request"
  "43b10f831effee7a7ea5981fb2cf0b2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFloatValue-request>)))
  "Returns full string definition for message of type '<GetFloatValue-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFloatValue-request)))
  "Returns full string definition for message of type 'GetFloatValue-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFloatValue-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFloatValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFloatValue-request
))
;//! \htmlinclude GetFloatValue-response.msg.html

(cl:defclass <GetFloatValue-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
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

(cl:defclass GetFloatValue-response (<GetFloatValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFloatValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFloatValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-srv:<GetFloatValue-response> is deprecated: use camera_control_msgs-srv:GetFloatValue-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetFloatValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:value-val is deprecated.  Use camera_control_msgs-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetFloatValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:success-val is deprecated.  Use camera_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetFloatValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:message-val is deprecated.  Use camera_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFloatValue-response>) ostream)
  "Serializes a message object of type '<GetFloatValue-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFloatValue-response>) istream)
  "Deserializes a message object of type '<GetFloatValue-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFloatValue-response>)))
  "Returns string type for a service object of type '<GetFloatValue-response>"
  "camera_control_msgs/GetFloatValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloatValue-response)))
  "Returns string type for a service object of type 'GetFloatValue-response"
  "camera_control_msgs/GetFloatValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFloatValue-response>)))
  "Returns md5sum for a message object of type '<GetFloatValue-response>"
  "43b10f831effee7a7ea5981fb2cf0b2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFloatValue-response)))
  "Returns md5sum for a message object of type 'GetFloatValue-response"
  "43b10f831effee7a7ea5981fb2cf0b2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFloatValue-response>)))
  "Returns full string definition for message of type '<GetFloatValue-response>"
  (cl:format cl:nil "float32 value		# returned value~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFloatValue-response)))
  "Returns full string definition for message of type 'GetFloatValue-response"
  (cl:format cl:nil "float32 value		# returned value~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFloatValue-response>))
  (cl:+ 0
     4
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFloatValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFloatValue-response
    (cl:cons ':value (value msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFloatValue)))
  'GetFloatValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFloatValue)))
  'GetFloatValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloatValue)))
  "Returns string type for a service object of type '<GetFloatValue>"
  "camera_control_msgs/GetFloatValue")