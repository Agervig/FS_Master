; Auto-generated. Do not edit!


(cl:in-package wss-msg)


;//! \htmlinclude FloatsWithTimestamp.msg.html

(cl:defclass <FloatsWithTimestamp> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass FloatsWithTimestamp (<FloatsWithTimestamp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FloatsWithTimestamp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FloatsWithTimestamp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wss-msg:<FloatsWithTimestamp> is deprecated: use wss-msg:FloatsWithTimestamp instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FloatsWithTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wss-msg:value-val is deprecated.  Use wss-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <FloatsWithTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wss-msg:voltage-val is deprecated.  Use wss-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <FloatsWithTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wss-msg:timestamp-val is deprecated.  Use wss-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FloatsWithTimestamp>) ostream)
  "Serializes a message object of type '<FloatsWithTimestamp>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FloatsWithTimestamp>) istream)
  "Deserializes a message object of type '<FloatsWithTimestamp>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FloatsWithTimestamp>)))
  "Returns string type for a message object of type '<FloatsWithTimestamp>"
  "wss/FloatsWithTimestamp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FloatsWithTimestamp)))
  "Returns string type for a message object of type 'FloatsWithTimestamp"
  "wss/FloatsWithTimestamp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FloatsWithTimestamp>)))
  "Returns md5sum for a message object of type '<FloatsWithTimestamp>"
  "e2e0e450eca59b8e01accf08721dbd3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FloatsWithTimestamp)))
  "Returns md5sum for a message object of type 'FloatsWithTimestamp"
  "e2e0e450eca59b8e01accf08721dbd3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FloatsWithTimestamp>)))
  "Returns full string definition for message of type '<FloatsWithTimestamp>"
  (cl:format cl:nil "float32 value~%float32 voltage~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FloatsWithTimestamp)))
  "Returns full string definition for message of type 'FloatsWithTimestamp"
  (cl:format cl:nil "float32 value~%float32 voltage~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FloatsWithTimestamp>))
  (cl:+ 0
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FloatsWithTimestamp>))
  "Converts a ROS message object to a list"
  (cl:list 'FloatsWithTimestamp
    (cl:cons ':value (value msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':timestamp (timestamp msg))
))
