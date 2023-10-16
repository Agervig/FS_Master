; Auto-generated. Do not edit!


(cl:in-package dnb_msgs-msg)


;//! \htmlinclude DatastoreExternalEntry.msg.html

(cl:defclass <DatastoreExternalEntry> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (source_id
    :reader source_id
    :initarg :source_id
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (display_title
    :reader display_title
    :initarg :display_title
    :type cl:string
    :initform "")
   (editable
    :reader editable
    :initarg :editable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DatastoreExternalEntry (<DatastoreExternalEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DatastoreExternalEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DatastoreExternalEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-msg:<DatastoreExternalEntry> is deprecated: use dnb_msgs-msg:DatastoreExternalEntry instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <DatastoreExternalEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:source-val is deprecated.  Use dnb_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'source_id-val :lambda-list '(m))
(cl:defmethod source_id-val ((m <DatastoreExternalEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:source_id-val is deprecated.  Use dnb_msgs-msg:source_id instead.")
  (source_id m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DatastoreExternalEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:value-val is deprecated.  Use dnb_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DatastoreExternalEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:type-val is deprecated.  Use dnb_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'display_title-val :lambda-list '(m))
(cl:defmethod display_title-val ((m <DatastoreExternalEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:display_title-val is deprecated.  Use dnb_msgs-msg:display_title instead.")
  (display_title m))

(cl:ensure-generic-function 'editable-val :lambda-list '(m))
(cl:defmethod editable-val ((m <DatastoreExternalEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:editable-val is deprecated.  Use dnb_msgs-msg:editable instead.")
  (editable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DatastoreExternalEntry>) ostream)
  "Serializes a message object of type '<DatastoreExternalEntry>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'display_title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'display_title))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'editable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DatastoreExternalEntry>) istream)
  "Deserializes a message object of type '<DatastoreExternalEntry>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'display_title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'display_title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'editable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DatastoreExternalEntry>)))
  "Returns string type for a message object of type '<DatastoreExternalEntry>"
  "dnb_msgs/DatastoreExternalEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DatastoreExternalEntry)))
  "Returns string type for a message object of type 'DatastoreExternalEntry"
  "dnb_msgs/DatastoreExternalEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DatastoreExternalEntry>)))
  "Returns md5sum for a message object of type '<DatastoreExternalEntry>"
  "c5511fa9acf57fd3f2c6cc80e60bd29f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DatastoreExternalEntry)))
  "Returns md5sum for a message object of type 'DatastoreExternalEntry"
  "c5511fa9acf57fd3f2c6cc80e60bd29f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DatastoreExternalEntry>)))
  "Returns full string definition for message of type '<DatastoreExternalEntry>"
  (cl:format cl:nil "string source~%string source_id~%string value~%string type~%string display_title~%bool editable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DatastoreExternalEntry)))
  "Returns full string definition for message of type 'DatastoreExternalEntry"
  (cl:format cl:nil "string source~%string source_id~%string value~%string type~%string display_title~%bool editable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DatastoreExternalEntry>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source))
     4 (cl:length (cl:slot-value msg 'source_id))
     4 (cl:length (cl:slot-value msg 'value))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'display_title))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DatastoreExternalEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'DatastoreExternalEntry
    (cl:cons ':source (source msg))
    (cl:cons ':source_id (source_id msg))
    (cl:cons ':value (value msg))
    (cl:cons ':type (type msg))
    (cl:cons ':display_title (display_title msg))
    (cl:cons ':editable (editable msg))
))
