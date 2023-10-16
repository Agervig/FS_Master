;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::GetProgramsList)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'GetProgramsList (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::GETPROGRAMSLIST")
  (make-package "DNB_MSGS::GETPROGRAMSLIST"))
(unless (find-package "DNB_MSGS::GETPROGRAMSLISTREQUEST")
  (make-package "DNB_MSGS::GETPROGRAMSLISTREQUEST"))
(unless (find-package "DNB_MSGS::GETPROGRAMSLISTRESPONSE")
  (make-package "DNB_MSGS::GETPROGRAMSLISTRESPONSE"))

(in-package "ROS")





(defclass dnb_msgs::GetProgramsListRequest
  :super ros::object
  :slots ())

(defmethod dnb_msgs::GetProgramsListRequest
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

(defclass dnb_msgs::GetProgramsListResponse
  :super ros::object
  :slots (_programs ))

(defmethod dnb_msgs::GetProgramsListResponse
  (:init
   (&key
    ((:programs __programs) ())
    )
   (send-super :init)
   (setq _programs __programs)
   self)
  (:programs
   (&rest __programs)
   (if (keywordp (car __programs))
       (send* _programs __programs)
     (progn
       (if __programs (setq _programs (car __programs)))
       _programs)))
  (:serialization-length
   ()
   (+
    ;; dnb_msgs/Program[] _programs
    (apply #'+ (send-all _programs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dnb_msgs/Program[] _programs
     (write-long (length _programs) s)
     (dolist (elem _programs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dnb_msgs/Program[] _programs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _programs (let (r) (dotimes (i n) (push (instance dnb_msgs::Program :init) r)) r))
     (dolist (elem- _programs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dnb_msgs::GetProgramsList
  :super ros::object
  :slots ())

(setf (get dnb_msgs::GetProgramsList :md5sum-) "72cea8df2b0c1e870498322f5ffbab0b")
(setf (get dnb_msgs::GetProgramsList :datatype-) "dnb_msgs/GetProgramsList")
(setf (get dnb_msgs::GetProgramsList :request) dnb_msgs::GetProgramsListRequest)
(setf (get dnb_msgs::GetProgramsList :response) dnb_msgs::GetProgramsListResponse)

(defmethod dnb_msgs::GetProgramsListRequest
  (:response () (instance dnb_msgs::GetProgramsListResponse :init)))

(setf (get dnb_msgs::GetProgramsListRequest :md5sum-) "72cea8df2b0c1e870498322f5ffbab0b")
(setf (get dnb_msgs::GetProgramsListRequest :datatype-) "dnb_msgs/GetProgramsListRequest")
(setf (get dnb_msgs::GetProgramsListRequest :definition-)
      "
---
Program[] programs

================================================================================
MSG: dnb_msgs/Program
string name
Argument[] arguments
================================================================================
MSG: dnb_msgs/Argument
string name
string type
")

(setf (get dnb_msgs::GetProgramsListResponse :md5sum-) "72cea8df2b0c1e870498322f5ffbab0b")
(setf (get dnb_msgs::GetProgramsListResponse :datatype-) "dnb_msgs/GetProgramsListResponse")
(setf (get dnb_msgs::GetProgramsListResponse :definition-)
      "
---
Program[] programs

================================================================================
MSG: dnb_msgs/Program
string name
Argument[] arguments
================================================================================
MSG: dnb_msgs/Argument
string name
string type
")



(provide :dnb_msgs/GetProgramsList "72cea8df2b0c1e870498322f5ffbab0b")


