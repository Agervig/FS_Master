;; Auto-generated. Do not edit!


(when (boundp 'camera_control_msgs::SetWhiteBalance)
  (if (not (find-package "CAMERA_CONTROL_MSGS"))
    (make-package "CAMERA_CONTROL_MSGS"))
  (shadow 'SetWhiteBalance (find-package "CAMERA_CONTROL_MSGS")))
(unless (find-package "CAMERA_CONTROL_MSGS::SETWHITEBALANCE")
  (make-package "CAMERA_CONTROL_MSGS::SETWHITEBALANCE"))
(unless (find-package "CAMERA_CONTROL_MSGS::SETWHITEBALANCEREQUEST")
  (make-package "CAMERA_CONTROL_MSGS::SETWHITEBALANCEREQUEST"))
(unless (find-package "CAMERA_CONTROL_MSGS::SETWHITEBALANCERESPONSE")
  (make-package "CAMERA_CONTROL_MSGS::SETWHITEBALANCERESPONSE"))

(in-package "ROS")





(defclass camera_control_msgs::SetWhiteBalanceRequest
  :super ros::object
  :slots (_balance_ratio_red _balance_ratio_green _balance_ratio_blue ))

(defmethod camera_control_msgs::SetWhiteBalanceRequest
  (:init
   (&key
    ((:balance_ratio_red __balance_ratio_red) 0.0)
    ((:balance_ratio_green __balance_ratio_green) 0.0)
    ((:balance_ratio_blue __balance_ratio_blue) 0.0)
    )
   (send-super :init)
   (setq _balance_ratio_red (float __balance_ratio_red))
   (setq _balance_ratio_green (float __balance_ratio_green))
   (setq _balance_ratio_blue (float __balance_ratio_blue))
   self)
  (:balance_ratio_red
   (&optional __balance_ratio_red)
   (if __balance_ratio_red (setq _balance_ratio_red __balance_ratio_red)) _balance_ratio_red)
  (:balance_ratio_green
   (&optional __balance_ratio_green)
   (if __balance_ratio_green (setq _balance_ratio_green __balance_ratio_green)) _balance_ratio_green)
  (:balance_ratio_blue
   (&optional __balance_ratio_blue)
   (if __balance_ratio_blue (setq _balance_ratio_blue __balance_ratio_blue)) _balance_ratio_blue)
  (:serialization-length
   ()
   (+
    ;; float32 _balance_ratio_red
    4
    ;; float32 _balance_ratio_green
    4
    ;; float32 _balance_ratio_blue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _balance_ratio_red
       (sys::poke _balance_ratio_red (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _balance_ratio_green
       (sys::poke _balance_ratio_green (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _balance_ratio_blue
       (sys::poke _balance_ratio_blue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _balance_ratio_red
     (setq _balance_ratio_red (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _balance_ratio_green
     (setq _balance_ratio_green (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _balance_ratio_blue
     (setq _balance_ratio_blue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass camera_control_msgs::SetWhiteBalanceResponse
  :super ros::object
  :slots (_success _message ))

(defmethod camera_control_msgs::SetWhiteBalanceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass camera_control_msgs::SetWhiteBalance
  :super ros::object
  :slots ())

(setf (get camera_control_msgs::SetWhiteBalance :md5sum-) "fdbb1487027d9369a9a369523a030ac9")
(setf (get camera_control_msgs::SetWhiteBalance :datatype-) "camera_control_msgs/SetWhiteBalance")
(setf (get camera_control_msgs::SetWhiteBalance :request) camera_control_msgs::SetWhiteBalanceRequest)
(setf (get camera_control_msgs::SetWhiteBalance :response) camera_control_msgs::SetWhiteBalanceResponse)

(defmethod camera_control_msgs::SetWhiteBalanceRequest
  (:response () (instance camera_control_msgs::SetWhiteBalanceResponse :init)))

(setf (get camera_control_msgs::SetWhiteBalanceRequest :md5sum-) "fdbb1487027d9369a9a369523a030ac9")
(setf (get camera_control_msgs::SetWhiteBalanceRequest :datatype-) "camera_control_msgs/SetWhiteBalanceRequest")
(setf (get camera_control_msgs::SetWhiteBalanceRequest :definition-)
      "# The Balance White camera feature allows you to manually correct color shifts so that white objects appear white in images acquired.
# For this purpose, a digital gain correction can be applied per color channel (red, green, blue).
# The increase or decrease in intensity is proportional. For example, if the balance ratio for a color is set to 1.2, the intensity of that color is increased by 20 %.
# NOTE: calling this service will turn off the \"Balance White Auto\"

float32 balance_ratio_red
float32 balance_ratio_green
float32 balance_ratio_blue

---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get camera_control_msgs::SetWhiteBalanceResponse :md5sum-) "fdbb1487027d9369a9a369523a030ac9")
(setf (get camera_control_msgs::SetWhiteBalanceResponse :datatype-) "camera_control_msgs/SetWhiteBalanceResponse")
(setf (get camera_control_msgs::SetWhiteBalanceResponse :definition-)
      "# The Balance White camera feature allows you to manually correct color shifts so that white objects appear white in images acquired.
# For this purpose, a digital gain correction can be applied per color channel (red, green, blue).
# The increase or decrease in intensity is proportional. For example, if the balance ratio for a color is set to 1.2, the intensity of that color is increased by 20 %.
# NOTE: calling this service will turn off the \"Balance White Auto\"

float32 balance_ratio_red
float32 balance_ratio_green
float32 balance_ratio_blue

---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :camera_control_msgs/SetWhiteBalance "fdbb1487027d9369a9a369523a030ac9")


