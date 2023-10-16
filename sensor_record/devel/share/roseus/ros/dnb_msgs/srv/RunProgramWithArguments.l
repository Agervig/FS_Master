;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::RunProgramWithArguments)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'RunProgramWithArguments (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::RUNPROGRAMWITHARGUMENTS")
  (make-package "DNB_MSGS::RUNPROGRAMWITHARGUMENTS"))
(unless (find-package "DNB_MSGS::RUNPROGRAMWITHARGUMENTSREQUEST")
  (make-package "DNB_MSGS::RUNPROGRAMWITHARGUMENTSREQUEST"))
(unless (find-package "DNB_MSGS::RUNPROGRAMWITHARGUMENTSRESPONSE")
  (make-package "DNB_MSGS::RUNPROGRAMWITHARGUMENTSRESPONSE"))

(in-package "ROS")





(defclass dnb_msgs::RunProgramWithArgumentsRequest
  :super ros::object
  :slots (_program ))

(defmethod dnb_msgs::RunProgramWithArgumentsRequest
  (:init
   (&key
    ((:program __program) (instance dnb_msgs::Program :init))
    )
   (send-super :init)
   (setq _program __program)
   self)
  (:program
   (&rest __program)
   (if (keywordp (car __program))
       (send* _program __program)
     (progn
       (if __program (setq _program (car __program)))
       _program)))
  (:serialization-length
   ()
   (+
    ;; dnb_msgs/Program _program
    (send _program :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dnb_msgs/Program _program
       (send _program :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dnb_msgs/Program _program
     (send _program :deserialize buf ptr-) (incf ptr- (send _program :serialization-length))
   ;;
   self)
  )

(defclass dnb_msgs::RunProgramWithArgumentsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod dnb_msgs::RunProgramWithArgumentsResponse
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

(defclass dnb_msgs::RunProgramWithArguments
  :super ros::object
  :slots ())

(setf (get dnb_msgs::RunProgramWithArguments :md5sum-) "98a81ff4cecb846b0a97bc6aa8107d97")
(setf (get dnb_msgs::RunProgramWithArguments :datatype-) "dnb_msgs/RunProgramWithArguments")
(setf (get dnb_msgs::RunProgramWithArguments :request) dnb_msgs::RunProgramWithArgumentsRequest)
(setf (get dnb_msgs::RunProgramWithArguments :response) dnb_msgs::RunProgramWithArgumentsResponse)

(defmethod dnb_msgs::RunProgramWithArgumentsRequest
  (:response () (instance dnb_msgs::RunProgramWithArgumentsResponse :init)))

(setf (get dnb_msgs::RunProgramWithArgumentsRequest :md5sum-) "98a81ff4cecb846b0a97bc6aa8107d97")
(setf (get dnb_msgs::RunProgramWithArgumentsRequest :datatype-) "dnb_msgs/RunProgramWithArgumentsRequest")
(setf (get dnb_msgs::RunProgramWithArgumentsRequest :definition-)
      "Program program

================================================================================
MSG: dnb_msgs/Program
string name
Argument[] arguments
================================================================================
MSG: dnb_msgs/Argument
string name
string type
---
bool success
string message
")

(setf (get dnb_msgs::RunProgramWithArgumentsResponse :md5sum-) "98a81ff4cecb846b0a97bc6aa8107d97")
(setf (get dnb_msgs::RunProgramWithArgumentsResponse :datatype-) "dnb_msgs/RunProgramWithArgumentsResponse")
(setf (get dnb_msgs::RunProgramWithArgumentsResponse :definition-)
      "Program program

================================================================================
MSG: dnb_msgs/Program
string name
Argument[] arguments
================================================================================
MSG: dnb_msgs/Argument
string name
string type
---
bool success
string message
")



(provide :dnb_msgs/RunProgramWithArguments "98a81ff4cecb846b0a97bc6aa8107d97")


