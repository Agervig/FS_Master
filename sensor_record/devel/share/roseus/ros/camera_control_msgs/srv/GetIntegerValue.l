;; Auto-generated. Do not edit!


(when (boundp 'camera_control_msgs::GetIntegerValue)
  (if (not (find-package "CAMERA_CONTROL_MSGS"))
    (make-package "CAMERA_CONTROL_MSGS"))
  (shadow 'GetIntegerValue (find-package "CAMERA_CONTROL_MSGS")))
(unless (find-package "CAMERA_CONTROL_MSGS::GETINTEGERVALUE")
  (make-package "CAMERA_CONTROL_MSGS::GETINTEGERVALUE"))
(unless (find-package "CAMERA_CONTROL_MSGS::GETINTEGERVALUEREQUEST")
  (make-package "CAMERA_CONTROL_MSGS::GETINTEGERVALUEREQUEST"))
(unless (find-package "CAMERA_CONTROL_MSGS::GETINTEGERVALUERESPONSE")
  (make-package "CAMERA_CONTROL_MSGS::GETINTEGERVALUERESPONSE"))

(in-package "ROS")





(defclass camera_control_msgs::GetIntegerValueRequest
  :super ros::object
  :slots ())

(defmethod camera_control_msgs::GetIntegerValueRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass camera_control_msgs::GetIntegerValueResponse
  :super ros::object
  :slots (_value _success _message ))

(defmethod camera_control_msgs::GetIntegerValueResponse
  (:init
   (&key
    ((:value __value) 0)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass camera_control_msgs::GetIntegerValue
  :super ros::object
  :slots ())

(setf (get camera_control_msgs::GetIntegerValue :md5sum-) "2e594fdfa2675fb84aef8c993fb08db4")
(setf (get camera_control_msgs::GetIntegerValue :datatype-) "camera_control_msgs/GetIntegerValue")
(setf (get camera_control_msgs::GetIntegerValue :request) camera_control_msgs::GetIntegerValueRequest)
(setf (get camera_control_msgs::GetIntegerValue :response) camera_control_msgs::GetIntegerValueResponse)

(defmethod camera_control_msgs::GetIntegerValueRequest
  (:response () (instance camera_control_msgs::GetIntegerValueResponse :init)))

(setf (get camera_control_msgs::GetIntegerValueRequest :md5sum-) "2e594fdfa2675fb84aef8c993fb08db4")
(setf (get camera_control_msgs::GetIntegerValueRequest :datatype-) "camera_control_msgs/GetIntegerValueRequest")
(setf (get camera_control_msgs::GetIntegerValueRequest :definition-)
      "
---
int32 value		# returned value
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get camera_control_msgs::GetIntegerValueResponse :md5sum-) "2e594fdfa2675fb84aef8c993fb08db4")
(setf (get camera_control_msgs::GetIntegerValueResponse :datatype-) "camera_control_msgs/GetIntegerValueResponse")
(setf (get camera_control_msgs::GetIntegerValueResponse :definition-)
      "
---
int32 value		# returned value
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :camera_control_msgs/GetIntegerValue "2e594fdfa2675fb84aef8c993fb08db4")


