; Auto-generated. Do not edit!


(cl:in-package dnb_msgs-msg)


;//! \htmlinclude Program.msg.html

(cl:defclass <Program> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (arguments
    :reader arguments
    :initarg :arguments
    :type (cl:vector dnb_msgs-msg:Argument)
   :initform (cl:make-array 0 :element-type 'dnb_msgs-msg:Argument :initial-element (cl:make-instance 'dnb_msgs-msg:Argument))))
)

(cl:defclass Program (<Program>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Program>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Program)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-msg:<Program> is deprecated: use dnb_msgs-msg:Program instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Program>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:name-val is deprecated.  Use dnb_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'arguments-val :lambda-list '(m))
(cl:defmethod arguments-val ((m <Program>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:arguments-val is deprecated.  Use dnb_msgs-msg:arguments instead.")
  (arguments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Program>) ostream)
  "Serializes a message object of type '<Program>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arguments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arguments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Program>) istream)
  "Deserializes a message object of type '<Program>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arguments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arguments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dnb_msgs-msg:Argument))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Program>)))
  "Returns string type for a message object of type '<Program>"
  "dnb_msgs/Program")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Program)))
  "Returns string type for a message object of type 'Program"
  "dnb_msgs/Program")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Program>)))
  "Returns md5sum for a message object of type '<Program>"
  "1d51239b0eb86a694c9fb7b883a96b58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Program)))
  "Returns md5sum for a message object of type 'Program"
  "1d51239b0eb86a694c9fb7b883a96b58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Program>)))
  "Returns full string definition for message of type '<Program>"
  (cl:format cl:nil "string name~%Argument[] arguments~%================================================================================~%MSG: dnb_msgs/Argument~%string name~%string type~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Program)))
  "Returns full string definition for message of type 'Program"
  (cl:format cl:nil "string name~%Argument[] arguments~%================================================================================~%MSG: dnb_msgs/Argument~%string name~%string type~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Program>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arguments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Program>))
  "Converts a ROS message object to a list"
  (cl:list 'Program
    (cl:cons ':name (name msg))
    (cl:cons ':arguments (arguments msg))
))
