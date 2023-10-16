;; Auto-generated. Do not edit!


(when (boundp 'camera_control_msgs::GetFloatValue)
  (if (not (find-package "CAMERA_CONTROL_MSGS"))
    (make-package "CAMERA_CONTROL_MSGS"))
  (shadow 'GetFloatValue (find-package "CAMERA_CONTROL_MSGS")))
(unless (find-package "CAMERA_CONTROL_MSGS::GETFLOATVALUE")
  (make-package "CAMERA_CONTROL_MSGS::GETFLOATVALUE"))
(unless (find-package "CAMERA_CONTROL_MSGS::GETFLOATVALUEREQUEST")
  (make-package "CAMERA_CONTROL_MSGS::GETFLOATVALUEREQUEST"))
(unless (find-package "CAMERA_CONTROL_MSGS::GETFLOATVALUERESPONSE")
  (make-package "CAMERA_CONTROL_MSGS::GETFLOATVALUERESPONSE"))

(in-package "ROS")





(defclass camera_control_msgs::GetFloatValueRequest
  :super ros::object
  :slots ())

(defmethod camera_control_msgs::GetFloatValueRequest
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

(defclass camera_control_msgs::GetFloatValueResponse
  :super ros::object
  :slots (_value _success _message ))

(defmethod camera_control_msgs::GetFloatValueResponse
  (:init
   (&key
    ((:value __value) 0.0)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _value (float __value))
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
    ;; float32 _value
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
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass camera_control_msgs::GetFloatValue
  :super ros::object
  :slots ())

(setf (get camera_control_msgs::GetFloatValue :md5sum-) "43b10f831effee7a7ea5981fb2cf0b2c")
(setf (get camera_control_msgs::GetFloatValue :datatype-) "camera_control_msgs/GetFloatValue")
(setf (get camera_control_msgs::GetFloatValue :request) camera_control_msgs::GetFloatValueRequest)
(setf (get camera_control_msgs::GetFloatValue :response) camera_control_msgs::GetFloatValueResponse)

(defmethod camera_control_msgs::GetFloatValueRequest
  (:response () (instance camera_control_msgs::GetFloatValueResponse :init)))

(setf (get camera_control_msgs::GetFloatValueRequest :md5sum-) "43b10f831effee7a7ea5981fb2cf0b2c")
(setf (get camera_control_msgs::GetFloatValueRequest :datatype-) "camera_control_msgs/GetFloatValueRequest")
(setf (get camera_control_msgs::GetFloatValueRequest :definition-)
      "
---
float32 value		# returned value
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get camera_control_msgs::GetFloatValueResponse :md5sum-) "43b10f831effee7a7ea5981fb2cf0b2c")
(setf (get camera_control_msgs::GetFloatValueResponse :datatype-) "camera_control_msgs/GetFloatValueResponse")
(setf (get camera_control_msgs::GetFloatValueResponse :definition-)
      "
---
float32 value		# returned value
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :camera_control_msgs/GetFloatValue "43b10f831effee7a7ea5981fb2cf0b2c")


