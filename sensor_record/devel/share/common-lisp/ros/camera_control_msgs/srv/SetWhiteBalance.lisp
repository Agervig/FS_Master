; Auto-generated. Do not edit!


(cl:in-package camera_control_msgs-srv)


;//! \htmlinclude SetWhiteBalance-request.msg.html

(cl:defclass <SetWhiteBalance-request> (roslisp-msg-protocol:ros-message)
  ((balance_ratio_red
    :reader balance_ratio_red
    :initarg :balance_ratio_red
    :type cl:float
    :initform 0.0)
   (balance_ratio_green
    :reader balance_ratio_green
    :initarg :balance_ratio_green
    :type cl:float
    :initform 0.0)
   (balance_ratio_blue
    :reader balance_ratio_blue
    :initarg :balance_ratio_blue
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetWhiteBalance-request (<SetWhiteBalance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWhiteBalance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWhiteBalance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-srv:<SetWhiteBalance-request> is deprecated: use camera_control_msgs-srv:SetWhiteBalance-request instead.")))

(cl:ensure-generic-function 'balance_ratio_red-val :lambda-list '(m))
(cl:defmethod balance_ratio_red-val ((m <SetWhiteBalance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:balance_ratio_red-val is deprecated.  Use camera_control_msgs-srv:balance_ratio_red instead.")
  (balance_ratio_red m))

(cl:ensure-generic-function 'balance_ratio_green-val :lambda-list '(m))
(cl:defmethod balance_ratio_green-val ((m <SetWhiteBalance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:balance_ratio_green-val is deprecated.  Use camera_control_msgs-srv:balance_ratio_green instead.")
  (balance_ratio_green m))

(cl:ensure-generic-function 'balance_ratio_blue-val :lambda-list '(m))
(cl:defmethod balance_ratio_blue-val ((m <SetWhiteBalance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:balance_ratio_blue-val is deprecated.  Use camera_control_msgs-srv:balance_ratio_blue instead.")
  (balance_ratio_blue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWhiteBalance-request>) ostream)
  "Serializes a message object of type '<SetWhiteBalance-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'balance_ratio_red))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'balance_ratio_green))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'balance_ratio_blue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWhiteBalance-request>) istream)
  "Deserializes a message object of type '<SetWhiteBalance-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'balance_ratio_red) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'balance_ratio_green) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'balance_ratio_blue) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWhiteBalance-request>)))
  "Returns string type for a service object of type '<SetWhiteBalance-request>"
  "camera_control_msgs/SetWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWhiteBalance-request)))
  "Returns string type for a service object of type 'SetWhiteBalance-request"
  "camera_control_msgs/SetWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWhiteBalance-request>)))
  "Returns md5sum for a message object of type '<SetWhiteBalance-request>"
  "fdbb1487027d9369a9a369523a030ac9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWhiteBalance-request)))
  "Returns md5sum for a message object of type 'SetWhiteBalance-request"
  "fdbb1487027d9369a9a369523a030ac9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWhiteBalance-request>)))
  "Returns full string definition for message of type '<SetWhiteBalance-request>"
  (cl:format cl:nil "# The Balance White camera feature allows you to manually correct color shifts so that white objects appear white in images acquired.~%# For this purpose, a digital gain correction can be applied per color channel (red, green, blue).~%# The increase or decrease in intensity is proportional. For example, if the balance ratio for a color is set to 1.2, the intensity of that color is increased by 20 %.~%# NOTE: calling this service will turn off the \"Balance White Auto\"~%~%float32 balance_ratio_red~%float32 balance_ratio_green~%float32 balance_ratio_blue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWhiteBalance-request)))
  "Returns full string definition for message of type 'SetWhiteBalance-request"
  (cl:format cl:nil "# The Balance White camera feature allows you to manually correct color shifts so that white objects appear white in images acquired.~%# For this purpose, a digital gain correction can be applied per color channel (red, green, blue).~%# The increase or decrease in intensity is proportional. For example, if the balance ratio for a color is set to 1.2, the intensity of that color is increased by 20 %.~%# NOTE: calling this service will turn off the \"Balance White Auto\"~%~%float32 balance_ratio_red~%float32 balance_ratio_green~%float32 balance_ratio_blue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWhiteBalance-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWhiteBalance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWhiteBalance-request
    (cl:cons ':balance_ratio_red (balance_ratio_red msg))
    (cl:cons ':balance_ratio_green (balance_ratio_green msg))
    (cl:cons ':balance_ratio_blue (balance_ratio_blue msg))
))
;//! \htmlinclude SetWhiteBalance-response.msg.html

(cl:defclass <SetWhiteBalance-response> (roslisp-msg-protocol:ros-message)
  ((success
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

(cl:defclass SetWhiteBalance-response (<SetWhiteBalance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWhiteBalance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWhiteBalance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-srv:<SetWhiteBalance-response> is deprecated: use camera_control_msgs-srv:SetWhiteBalance-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetWhiteBalance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:success-val is deprecated.  Use camera_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetWhiteBalance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-srv:message-val is deprecated.  Use camera_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWhiteBalance-response>) ostream)
  "Serializes a message object of type '<SetWhiteBalance-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWhiteBalance-response>) istream)
  "Deserializes a message object of type '<SetWhiteBalance-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWhiteBalance-response>)))
  "Returns string type for a service object of type '<SetWhiteBalance-response>"
  "camera_control_msgs/SetWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWhiteBalance-response)))
  "Returns string type for a service object of type 'SetWhiteBalance-response"
  "camera_control_msgs/SetWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWhiteBalance-response>)))
  "Returns md5sum for a message object of type '<SetWhiteBalance-response>"
  "fdbb1487027d9369a9a369523a030ac9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWhiteBalance-response)))
  "Returns md5sum for a message object of type 'SetWhiteBalance-response"
  "fdbb1487027d9369a9a369523a030ac9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWhiteBalance-response>)))
  "Returns full string definition for message of type '<SetWhiteBalance-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWhiteBalance-response)))
  "Returns full string definition for message of type 'SetWhiteBalance-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWhiteBalance-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWhiteBalance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWhiteBalance-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWhiteBalance)))
  'SetWhiteBalance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWhiteBalance)))
  'SetWhiteBalance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWhiteBalance)))
  "Returns string type for a service object of type '<SetWhiteBalance>"
  "camera_control_msgs/SetWhiteBalance")