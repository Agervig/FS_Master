; Auto-generated. Do not edit!


(cl:in-package dnb_msgs-msg)


;//! \htmlinclude ToastMessage.msg.html

(cl:defclass <ToastMessage> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (sender_id
    :reader sender_id
    :initarg :sender_id
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type (cl:vector dnb_msgs-msg:ToastTranslation)
   :initform (cl:make-array 0 :element-type 'dnb_msgs-msg:ToastTranslation :initial-element (cl:make-instance 'dnb_msgs-msg:ToastTranslation))))
)

(cl:defclass ToastMessage (<ToastMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToastMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToastMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-msg:<ToastMessage> is deprecated: use dnb_msgs-msg:ToastMessage instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ToastMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:type-val is deprecated.  Use dnb_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'sender_id-val :lambda-list '(m))
(cl:defmethod sender_id-val ((m <ToastMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:sender_id-val is deprecated.  Use dnb_msgs-msg:sender_id instead.")
  (sender_id m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ToastMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:message-val is deprecated.  Use dnb_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ToastMessage>)))
    "Constants for message type '<ToastMessage>"
  '((:INFO . 0)
    (:SUCCESS . 1)
    (:WARNING . 2)
    (:ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ToastMessage)))
    "Constants for message type 'ToastMessage"
  '((:INFO . 0)
    (:SUCCESS . 1)
    (:WARNING . 2)
    (:ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToastMessage>) ostream)
  "Serializes a message object of type '<ToastMessage>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToastMessage>) istream)
  "Deserializes a message object of type '<ToastMessage>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sender_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sender_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'message) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'message)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dnb_msgs-msg:ToastTranslation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToastMessage>)))
  "Returns string type for a message object of type '<ToastMessage>"
  "dnb_msgs/ToastMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToastMessage)))
  "Returns string type for a message object of type 'ToastMessage"
  "dnb_msgs/ToastMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToastMessage>)))
  "Returns md5sum for a message object of type '<ToastMessage>"
  "450139b6154bf1387b145b5b52133212")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToastMessage)))
  "Returns md5sum for a message object of type 'ToastMessage"
  "450139b6154bf1387b145b5b52133212")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToastMessage>)))
  "Returns full string definition for message of type '<ToastMessage>"
  (cl:format cl:nil "uint8 INFO=0~%uint8 SUCCESS=1~%uint8 WARNING=2~%uint8 ERROR=3~%uint8 type~%string sender_id~%ToastTranslation[] message~%================================================================================~%MSG: dnb_msgs/ToastTranslation~%string language_code~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToastMessage)))
  "Returns full string definition for message of type 'ToastMessage"
  (cl:format cl:nil "uint8 INFO=0~%uint8 SUCCESS=1~%uint8 WARNING=2~%uint8 ERROR=3~%uint8 type~%string sender_id~%ToastTranslation[] message~%================================================================================~%MSG: dnb_msgs/ToastTranslation~%string language_code~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToastMessage>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'sender_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'message) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToastMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'ToastMessage
    (cl:cons ':type (type msg))
    (cl:cons ':sender_id (sender_id msg))
    (cl:cons ':message (message msg))
))
