; Auto-generated. Do not edit!


(cl:in-package dnb_msgs-srv)


;//! \htmlinclude RunProgramWithArguments-request.msg.html

(cl:defclass <RunProgramWithArguments-request> (roslisp-msg-protocol:ros-message)
  ((program
    :reader program
    :initarg :program
    :type dnb_msgs-msg:Program
    :initform (cl:make-instance 'dnb_msgs-msg:Program)))
)

(cl:defclass RunProgramWithArguments-request (<RunProgramWithArguments-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunProgramWithArguments-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunProgramWithArguments-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-srv:<RunProgramWithArguments-request> is deprecated: use dnb_msgs-srv:RunProgramWithArguments-request instead.")))

(cl:ensure-generic-function 'program-val :lambda-list '(m))
(cl:defmethod program-val ((m <RunProgramWithArguments-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-srv:program-val is deprecated.  Use dnb_msgs-srv:program instead.")
  (program m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunProgramWithArguments-request>) ostream)
  "Serializes a message object of type '<RunProgramWithArguments-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'program) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunProgramWithArguments-request>) istream)
  "Deserializes a message object of type '<RunProgramWithArguments-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'program) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunProgramWithArguments-request>)))
  "Returns string type for a service object of type '<RunProgramWithArguments-request>"
  "dnb_msgs/RunProgramWithArgumentsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunProgramWithArguments-request)))
  "Returns string type for a service object of type 'RunProgramWithArguments-request"
  "dnb_msgs/RunProgramWithArgumentsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunProgramWithArguments-request>)))
  "Returns md5sum for a message object of type '<RunProgramWithArguments-request>"
  "98a81ff4cecb846b0a97bc6aa8107d97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunProgramWithArguments-request)))
  "Returns md5sum for a message object of type 'RunProgramWithArguments-request"
  "98a81ff4cecb846b0a97bc6aa8107d97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunProgramWithArguments-request>)))
  "Returns full string definition for message of type '<RunProgramWithArguments-request>"
  (cl:format cl:nil "Program program~%~%================================================================================~%MSG: dnb_msgs/Program~%string name~%Argument[] arguments~%================================================================================~%MSG: dnb_msgs/Argument~%string name~%string type~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunProgramWithArguments-request)))
  "Returns full string definition for message of type 'RunProgramWithArguments-request"
  (cl:format cl:nil "Program program~%~%================================================================================~%MSG: dnb_msgs/Program~%string name~%Argument[] arguments~%================================================================================~%MSG: dnb_msgs/Argument~%string name~%string type~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunProgramWithArguments-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'program))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunProgramWithArguments-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RunProgramWithArguments-request
    (cl:cons ':program (program msg))
))
;//! \htmlinclude RunProgramWithArguments-response.msg.html

(cl:defclass <RunProgramWithArguments-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RunProgramWithArguments-response (<RunProgramWithArguments-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunProgramWithArguments-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunProgramWithArguments-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-srv:<RunProgramWithArguments-response> is deprecated: use dnb_msgs-srv:RunProgramWithArguments-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RunProgramWithArguments-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-srv:success-val is deprecated.  Use dnb_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RunProgramWithArguments-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-srv:message-val is deprecated.  Use dnb_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunProgramWithArguments-response>) ostream)
  "Serializes a message object of type '<RunProgramWithArguments-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunProgramWithArguments-response>) istream)
  "Deserializes a message object of type '<RunProgramWithArguments-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunProgramWithArguments-response>)))
  "Returns string type for a service object of type '<RunProgramWithArguments-response>"
  "dnb_msgs/RunProgramWithArgumentsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunProgramWithArguments-response)))
  "Returns string type for a service object of type 'RunProgramWithArguments-response"
  "dnb_msgs/RunProgramWithArgumentsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunProgramWithArguments-response>)))
  "Returns md5sum for a message object of type '<RunProgramWithArguments-response>"
  "98a81ff4cecb846b0a97bc6aa8107d97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunProgramWithArguments-response)))
  "Returns md5sum for a message object of type 'RunProgramWithArguments-response"
  "98a81ff4cecb846b0a97bc6aa8107d97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunProgramWithArguments-response>)))
  "Returns full string definition for message of type '<RunProgramWithArguments-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunProgramWithArguments-response)))
  "Returns full string definition for message of type 'RunProgramWithArguments-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunProgramWithArguments-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunProgramWithArguments-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RunProgramWithArguments-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RunProgramWithArguments)))
  'RunProgramWithArguments-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RunProgramWithArguments)))
  'RunProgramWithArguments-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunProgramWithArguments)))
  "Returns string type for a service object of type '<RunProgramWithArguments>"
  "dnb_msgs/RunProgramWithArguments")