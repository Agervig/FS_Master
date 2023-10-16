; Auto-generated. Do not edit!


(cl:in-package dnb_msgs-srv)


;//! \htmlinclude GetProgramsList-request.msg.html

(cl:defclass <GetProgramsList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetProgramsList-request (<GetProgramsList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramsList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramsList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-srv:<GetProgramsList-request> is deprecated: use dnb_msgs-srv:GetProgramsList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramsList-request>) ostream)
  "Serializes a message object of type '<GetProgramsList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramsList-request>) istream)
  "Deserializes a message object of type '<GetProgramsList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramsList-request>)))
  "Returns string type for a service object of type '<GetProgramsList-request>"
  "dnb_msgs/GetProgramsListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramsList-request)))
  "Returns string type for a service object of type 'GetProgramsList-request"
  "dnb_msgs/GetProgramsListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramsList-request>)))
  "Returns md5sum for a message object of type '<GetProgramsList-request>"
  "72cea8df2b0c1e870498322f5ffbab0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramsList-request)))
  "Returns md5sum for a message object of type 'GetProgramsList-request"
  "72cea8df2b0c1e870498322f5ffbab0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramsList-request>)))
  "Returns full string definition for message of type '<GetProgramsList-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramsList-request)))
  "Returns full string definition for message of type 'GetProgramsList-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramsList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramsList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramsList-request
))
;//! \htmlinclude GetProgramsList-response.msg.html

(cl:defclass <GetProgramsList-response> (roslisp-msg-protocol:ros-message)
  ((programs
    :reader programs
    :initarg :programs
    :type (cl:vector dnb_msgs-msg:Program)
   :initform (cl:make-array 0 :element-type 'dnb_msgs-msg:Program :initial-element (cl:make-instance 'dnb_msgs-msg:Program))))
)

(cl:defclass GetProgramsList-response (<GetProgramsList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramsList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramsList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-srv:<GetProgramsList-response> is deprecated: use dnb_msgs-srv:GetProgramsList-response instead.")))

(cl:ensure-generic-function 'programs-val :lambda-list '(m))
(cl:defmethod programs-val ((m <GetProgramsList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-srv:programs-val is deprecated.  Use dnb_msgs-srv:programs instead.")
  (programs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramsList-response>) ostream)
  "Serializes a message object of type '<GetProgramsList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'programs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'programs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramsList-response>) istream)
  "Deserializes a message object of type '<GetProgramsList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'programs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'programs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dnb_msgs-msg:Program))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramsList-response>)))
  "Returns string type for a service object of type '<GetProgramsList-response>"
  "dnb_msgs/GetProgramsListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramsList-response)))
  "Returns string type for a service object of type 'GetProgramsList-response"
  "dnb_msgs/GetProgramsListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramsList-response>)))
  "Returns md5sum for a message object of type '<GetProgramsList-response>"
  "72cea8df2b0c1e870498322f5ffbab0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramsList-response)))
  "Returns md5sum for a message object of type 'GetProgramsList-response"
  "72cea8df2b0c1e870498322f5ffbab0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramsList-response>)))
  "Returns full string definition for message of type '<GetProgramsList-response>"
  (cl:format cl:nil "Program[] programs~%~%================================================================================~%MSG: dnb_msgs/Program~%string name~%Argument[] arguments~%================================================================================~%MSG: dnb_msgs/Argument~%string name~%string type~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramsList-response)))
  "Returns full string definition for message of type 'GetProgramsList-response"
  (cl:format cl:nil "Program[] programs~%~%================================================================================~%MSG: dnb_msgs/Program~%string name~%Argument[] arguments~%================================================================================~%MSG: dnb_msgs/Argument~%string name~%string type~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramsList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'programs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramsList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramsList-response
    (cl:cons ':programs (programs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetProgramsList)))
  'GetProgramsList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetProgramsList)))
  'GetProgramsList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramsList)))
  "Returns string type for a service object of type '<GetProgramsList>"
  "dnb_msgs/GetProgramsList")