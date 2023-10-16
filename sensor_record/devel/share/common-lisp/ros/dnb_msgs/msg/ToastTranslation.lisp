; Auto-generated. Do not edit!


(cl:in-package dnb_msgs-msg)


;//! \htmlinclude ToastTranslation.msg.html

(cl:defclass <ToastTranslation> (roslisp-msg-protocol:ros-message)
  ((language_code
    :reader language_code
    :initarg :language_code
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass ToastTranslation (<ToastTranslation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToastTranslation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToastTranslation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-msg:<ToastTranslation> is deprecated: use dnb_msgs-msg:ToastTranslation instead.")))

(cl:ensure-generic-function 'language_code-val :lambda-list '(m))
(cl:defmethod language_code-val ((m <ToastTranslation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:language_code-val is deprecated.  Use dnb_msgs-msg:language_code instead.")
  (language_code m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ToastTranslation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:value-val is deprecated.  Use dnb_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToastTranslation>) ostream)
  "Serializes a message object of type '<ToastTranslation>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'language_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'language_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToastTranslation>) istream)
  "Deserializes a message object of type '<ToastTranslation>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'language_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'language_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToastTranslation>)))
  "Returns string type for a message object of type '<ToastTranslation>"
  "dnb_msgs/ToastTranslation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToastTranslation)))
  "Returns string type for a message object of type 'ToastTranslation"
  "dnb_msgs/ToastTranslation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToastTranslation>)))
  "Returns md5sum for a message object of type '<ToastTranslation>"
  "29b983d22ef0190726766d474d9c2435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToastTranslation)))
  "Returns md5sum for a message object of type 'ToastTranslation"
  "29b983d22ef0190726766d474d9c2435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToastTranslation>)))
  "Returns full string definition for message of type '<ToastTranslation>"
  (cl:format cl:nil "string language_code~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToastTranslation)))
  "Returns full string definition for message of type 'ToastTranslation"
  (cl:format cl:nil "string language_code~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToastTranslation>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'language_code))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToastTranslation>))
  "Converts a ROS message object to a list"
  (cl:list 'ToastTranslation
    (cl:cons ':language_code (language_code msg))
    (cl:cons ':value (value msg))
))
