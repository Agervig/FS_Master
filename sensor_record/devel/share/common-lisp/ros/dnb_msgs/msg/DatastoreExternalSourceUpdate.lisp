; Auto-generated. Do not edit!


(cl:in-package dnb_msgs-msg)


;//! \htmlinclude DatastoreExternalSourceUpdate.msg.html

(cl:defclass <DatastoreExternalSourceUpdate> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (source
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

(cl:defclass DatastoreExternalSourceUpdate (<DatastoreExternalSourceUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DatastoreExternalSourceUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DatastoreExternalSourceUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-msg:<DatastoreExternalSourceUpdate> is deprecated: use dnb_msgs-msg:DatastoreExternalSourceUpdate instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DatastoreExternalSourceUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:header-val is deprecated.  Use dnb_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <DatastoreExternalSourceUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:source-val is deprecated.  Use dnb_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'entries-val :lambda-list '(m))
(cl:defmethod entries-val ((m <DatastoreExternalSourceUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:entries-val is deprecated.  Use dnb_msgs-msg:entries instead.")
  (entries m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DatastoreExternalSourceUpdate>) ostream)
  "Serializes a message object of type '<DatastoreExternalSourceUpdate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DatastoreExternalSourceUpdate>) istream)
  "Deserializes a message object of type '<DatastoreExternalSourceUpdate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DatastoreExternalSourceUpdate>)))
  "Returns string type for a message object of type '<DatastoreExternalSourceUpdate>"
  "dnb_msgs/DatastoreExternalSourceUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DatastoreExternalSourceUpdate)))
  "Returns string type for a message object of type 'DatastoreExternalSourceUpdate"
  "dnb_msgs/DatastoreExternalSourceUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DatastoreExternalSourceUpdate>)))
  "Returns md5sum for a message object of type '<DatastoreExternalSourceUpdate>"
  "5d33e29f01329ea3b4ee770fb21f027e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DatastoreExternalSourceUpdate)))
  "Returns md5sum for a message object of type 'DatastoreExternalSourceUpdate"
  "5d33e29f01329ea3b4ee770fb21f027e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DatastoreExternalSourceUpdate>)))
  "Returns full string definition for message of type '<DatastoreExternalSourceUpdate>"
  (cl:format cl:nil "Header header~%string source~%DatastoreExternalEntry[] entries~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dnb_msgs/DatastoreExternalEntry~%string source~%string source_id~%string value~%string type~%string display_title~%bool editable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DatastoreExternalSourceUpdate)))
  "Returns full string definition for message of type 'DatastoreExternalSourceUpdate"
  (cl:format cl:nil "Header header~%string source~%DatastoreExternalEntry[] entries~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dnb_msgs/DatastoreExternalEntry~%string source~%string source_id~%string value~%string type~%string display_title~%bool editable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DatastoreExternalSourceUpdate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'source))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'entries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DatastoreExternalSourceUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'DatastoreExternalSourceUpdate
    (cl:cons ':header (header msg))
    (cl:cons ':source (source msg))
    (cl:cons ':entries (entries msg))
))
