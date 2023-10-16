; Auto-generated. Do not edit!


(cl:in-package dnb_msgs-srv)


;//! \htmlinclude ConfigureDatastoreExternalSource-request.msg.html

(cl:defclass <ConfigureDatastoreExternalSource-request> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (entries
    :reader entries
    :initarg :entries
    :type (cl:vector dnb_msgs-msg:DatastoreExternalEntry)
   :initform (cl:make-array 0 :element-type 'dnb_msgs-msg:DatastoreExternalEntry :initial-element (cl:make-instance 'dnb_msgs-msg:DatastoreExternalEntry))))
)

(cl:defclass ConfigureDatastoreExternalSource-request (<ConfigureDatastoreExternalSource-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigureDatastoreExternalSource-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigureDatastoreExternalSource-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-srv:<ConfigureDatastoreExternalSource-request> is deprecated: use dnb_msgs-srv:ConfigureDatastoreExternalSource-request instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <ConfigureDatastoreExternalSource-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-srv:source-val is deprecated.  Use dnb_msgs-srv:source instead.")
  (source m))

(cl:ensure-generic-function 'entries-val :lambda-list '(m))
(cl:defmethod entries-val ((m <ConfigureDatastoreExternalSource-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-srv:entries-val is deprecated.  Use dnb_msgs-srv:entries instead.")
  (entries m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigureDatastoreExternalSource-request>) ostream)
  "Serializes a message object of type '<ConfigureDatastoreExternalSource-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'entries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'entries))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigureDatastoreExternalSource-request>) istream)
  "Deserializes a message object of type '<ConfigureDatastoreExternalSource-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'entries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'entries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dnb_msgs-msg:DatastoreExternalEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigureDatastoreExternalSource-request>)))
  "Returns string type for a service object of type '<ConfigureDatastoreExternalSource-request>"
  "dnb_msgs/ConfigureDatastoreExternalSourceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureDatastoreExternalSource-request)))
  "Returns string type for a service object of type 'ConfigureDatastoreExternalSource-request"
  "dnb_msgs/ConfigureDatastoreExternalSourceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigureDatastoreExternalSource-request>)))
  "Returns md5sum for a message object of type '<ConfigureDatastoreExternalSource-request>"
  "316e479ef71cdaadbff872e2fcd262ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigureDatastoreExternalSource-request)))
  "Returns md5sum for a message object of type 'ConfigureDatastoreExternalSource-request"
  "316e479ef71cdaadbff872e2fcd262ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigureDatastoreExternalSource-request>)))
  "Returns full string definition for message of type '<ConfigureDatastoreExternalSource-request>"
  (cl:format cl:nil "string source~%DatastoreExternalEntry[] entries~%~%================================================================================~%MSG: dnb_msgs/DatastoreExternalEntry~%string source~%string source_id~%string value~%string type~%string display_title~%bool editable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigureDatastoreExternalSource-request)))
  "Returns full string definition for message of type 'ConfigureDatastoreExternalSource-request"
  (cl:format cl:nil "string source~%DatastoreExternalEntry[] entries~%~%================================================================================~%MSG: dnb_msgs/DatastoreExternalEntry~%string source~%string source_id~%string value~%string type~%string display_title~%bool editable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigureDatastoreExternalSource-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'entries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigureDatastoreExternalSource-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigureDatastoreExternalSource-request
    (cl:cons ':source (source msg))
    (cl:cons ':entries (entries msg))
))
;//! \htmlinclude ConfigureDatastoreExternalSource-response.msg.html

(cl:defclass <ConfigureDatastoreExternalSource-response> (roslisp-msg-protocol:ros-message)
  ((result_code
    :reader result_code
    :initarg :result_code
    :type cl:integer
    :initform 0)
   (result_message
    :reader result_message
    :initarg :result_message
    :type cl:string
    :initform ""))
)

(cl:defclass ConfigureDatastoreExternalSource-response (<ConfigureDatastoreExternalSource-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigureDatastoreExternalSource-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigureDatastoreExternalSource-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-srv:<ConfigureDatastoreExternalSource-response> is deprecated: use dnb_msgs-srv:ConfigureDatastoreExternalSource-response instead.")))

(cl:ensure-generic-function 'result_code-val :lambda-list '(m))
(cl:defmethod result_code-val ((m <ConfigureDatastoreExternalSource-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-srv:result_code-val is deprecated.  Use dnb_msgs-srv:result_code instead.")
  (result_code m))

(cl:ensure-generic-function 'result_message-val :lambda-list '(m))
(cl:defmethod result_message-val ((m <ConfigureDatastoreExternalSource-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-srv:result_message-val is deprecated.  Use dnb_msgs-srv:result_message instead.")
  (result_message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConfigureDatastoreExternalSource-response>)))
    "Constants for message type '<ConfigureDatastoreExternalSource-response>"
  '((:SUCCESS . 0)
    (:INVALID_SOURCE . 1)
    (:INVALID_ENTRY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConfigureDatastoreExternalSource-response)))
    "Constants for message type 'ConfigureDatastoreExternalSource-response"
  '((:SUCCESS . 0)
    (:INVALID_SOURCE . 1)
    (:INVALID_ENTRY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigureDatastoreExternalSource-response>) ostream)
  "Serializes a message object of type '<ConfigureDatastoreExternalSource-response>"
  (cl:let* ((signed (cl:slot-value msg 'result_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigureDatastoreExternalSource-response>) istream)
  "Deserializes a message object of type '<ConfigureDatastoreExternalSource-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigureDatastoreExternalSource-response>)))
  "Returns string type for a service object of type '<ConfigureDatastoreExternalSource-response>"
  "dnb_msgs/ConfigureDatastoreExternalSourceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureDatastoreExternalSource-response)))
  "Returns string type for a service object of type 'ConfigureDatastoreExternalSource-response"
  "dnb_msgs/ConfigureDatastoreExternalSourceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigureDatastoreExternalSource-response>)))
  "Returns md5sum for a message object of type '<ConfigureDatastoreExternalSource-response>"
  "316e479ef71cdaadbff872e2fcd262ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigureDatastoreExternalSource-response)))
  "Returns md5sum for a message object of type 'ConfigureDatastoreExternalSource-response"
  "316e479ef71cdaadbff872e2fcd262ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigureDatastoreExternalSource-response>)))
  "Returns full string definition for message of type '<ConfigureDatastoreExternalSource-response>"
  (cl:format cl:nil "int32 result_code~%int32 SUCCESS = 0~%int32 INVALID_SOURCE = 1~%int32 INVALID_ENTRY = 2~%string result_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigureDatastoreExternalSource-response)))
  "Returns full string definition for message of type 'ConfigureDatastoreExternalSource-response"
  (cl:format cl:nil "int32 result_code~%int32 SUCCESS = 0~%int32 INVALID_SOURCE = 1~%int32 INVALID_ENTRY = 2~%string result_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigureDatastoreExternalSource-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'result_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigureDatastoreExternalSource-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigureDatastoreExternalSource-response
    (cl:cons ':result_code (result_code msg))
    (cl:cons ':result_message (result_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConfigureDatastoreExternalSource)))
  'ConfigureDatastoreExternalSource-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConfigureDatastoreExternalSource)))
  'ConfigureDatastoreExternalSource-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureDatastoreExternalSource)))
  "Returns string type for a service object of type '<ConfigureDatastoreExternalSource>"
  "dnb_msgs/ConfigureDatastoreExternalSource")