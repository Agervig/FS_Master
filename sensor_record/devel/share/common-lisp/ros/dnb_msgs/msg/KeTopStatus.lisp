; Auto-generated. Do not edit!


(cl:in-package dnb_msgs-msg)


;//! \htmlinclude KeTopStatus.msg.html

(cl:defclass <KeTopStatus> (roslisp-msg-protocol:ros-message)
  ((buttons_active
    :reader buttons_active
    :initarg :buttons_active
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (second_active
    :reader second_active
    :initarg :second_active
    :type cl:boolean
    :initform cl:nil)
   (teach_mode
    :reader teach_mode
    :initarg :teach_mode
    :type cl:boolean
    :initform cl:nil)
   (auto_mode
    :reader auto_mode
    :initarg :auto_mode
    :type cl:boolean
    :initform cl:nil)
   (enabling_key_pressed
    :reader enabling_key_pressed
    :initarg :enabling_key_pressed
    :type cl:boolean
    :initform cl:nil)
   (jog_mode
    :reader jog_mode
    :initarg :jog_mode
    :type cl:fixnum
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass KeTopStatus (<KeTopStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeTopStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeTopStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnb_msgs-msg:<KeTopStatus> is deprecated: use dnb_msgs-msg:KeTopStatus instead.")))

(cl:ensure-generic-function 'buttons_active-val :lambda-list '(m))
(cl:defmethod buttons_active-val ((m <KeTopStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:buttons_active-val is deprecated.  Use dnb_msgs-msg:buttons_active instead.")
  (buttons_active m))

(cl:ensure-generic-function 'second_active-val :lambda-list '(m))
(cl:defmethod second_active-val ((m <KeTopStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:second_active-val is deprecated.  Use dnb_msgs-msg:second_active instead.")
  (second_active m))

(cl:ensure-generic-function 'teach_mode-val :lambda-list '(m))
(cl:defmethod teach_mode-val ((m <KeTopStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:teach_mode-val is deprecated.  Use dnb_msgs-msg:teach_mode instead.")
  (teach_mode m))

(cl:ensure-generic-function 'auto_mode-val :lambda-list '(m))
(cl:defmethod auto_mode-val ((m <KeTopStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:auto_mode-val is deprecated.  Use dnb_msgs-msg:auto_mode instead.")
  (auto_mode m))

(cl:ensure-generic-function 'enabling_key_pressed-val :lambda-list '(m))
(cl:defmethod enabling_key_pressed-val ((m <KeTopStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:enabling_key_pressed-val is deprecated.  Use dnb_msgs-msg:enabling_key_pressed instead.")
  (enabling_key_pressed m))

(cl:ensure-generic-function 'jog_mode-val :lambda-list '(m))
(cl:defmethod jog_mode-val ((m <KeTopStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:jog_mode-val is deprecated.  Use dnb_msgs-msg:jog_mode instead.")
  (jog_mode m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <KeTopStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnb_msgs-msg:msg-val is deprecated.  Use dnb_msgs-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<KeTopStatus>)))
    "Constants for message type '<KeTopStatus>"
  '((:ACK_BUTTON . 0)
    (:START_BUTTON . 13)
    (:STEP_BUTTON . 18)
    (:MENU_BUTTON . 23)
    (:WORLD . 0)
    (:BASE . 1)
    (:TOOL . 2)
    (:JOINTS . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'KeTopStatus)))
    "Constants for message type 'KeTopStatus"
  '((:ACK_BUTTON . 0)
    (:START_BUTTON . 13)
    (:STEP_BUTTON . 18)
    (:MENU_BUTTON . 23)
    (:WORLD . 0)
    (:BASE . 1)
    (:TOOL . 2)
    (:JOINTS . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeTopStatus>) ostream)
  "Serializes a message object of type '<KeTopStatus>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'buttons_active))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'buttons_active))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'second_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'teach_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabling_key_pressed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'jog_mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeTopStatus>) istream)
  "Deserializes a message object of type '<KeTopStatus>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'buttons_active) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'buttons_active)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'second_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'teach_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'auto_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enabling_key_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'jog_mode)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeTopStatus>)))
  "Returns string type for a message object of type '<KeTopStatus>"
  "dnb_msgs/KeTopStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeTopStatus)))
  "Returns string type for a message object of type 'KeTopStatus"
  "dnb_msgs/KeTopStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeTopStatus>)))
  "Returns md5sum for a message object of type '<KeTopStatus>"
  "86f0ec71e85ea498020b5729ce416bde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeTopStatus)))
  "Returns md5sum for a message object of type 'KeTopStatus"
  "86f0ec71e85ea498020b5729ce416bde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeTopStatus>)))
  "Returns full string definition for message of type '<KeTopStatus>"
  (cl:format cl:nil "uint8 ACK_BUTTON=0~%uint8 START_BUTTON=13~%uint8 STEP_BUTTON=18~%uint8 MENU_BUTTON=23~%uint8[] buttons_active~%~%bool second_active~%bool teach_mode~%bool auto_mode~%bool enabling_key_pressed~%~%uint8 WORLD=0~%uint8 BASE=1~%uint8 TOOL=2~%uint8 JOINTS=3~%uint8 jog_mode~%~%string msg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeTopStatus)))
  "Returns full string definition for message of type 'KeTopStatus"
  (cl:format cl:nil "uint8 ACK_BUTTON=0~%uint8 START_BUTTON=13~%uint8 STEP_BUTTON=18~%uint8 MENU_BUTTON=23~%uint8[] buttons_active~%~%bool second_active~%bool teach_mode~%bool auto_mode~%bool enabling_key_pressed~%~%uint8 WORLD=0~%uint8 BASE=1~%uint8 TOOL=2~%uint8 JOINTS=3~%uint8 jog_mode~%~%string msg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeTopStatus>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'buttons_active) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeTopStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'KeTopStatus
    (cl:cons ':buttons_active (buttons_active msg))
    (cl:cons ':second_active (second_active msg))
    (cl:cons ':teach_mode (teach_mode msg))
    (cl:cons ':auto_mode (auto_mode msg))
    (cl:cons ':enabling_key_pressed (enabling_key_pressed msg))
    (cl:cons ':jog_mode (jog_mode msg))
    (cl:cons ':msg (msg msg))
))
