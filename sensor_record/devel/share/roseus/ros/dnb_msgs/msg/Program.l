;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::Program)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'Program (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::PROGRAM")
  (make-package "DNB_MSGS::PROGRAM"))

(in-package "ROS")
;;//! \htmlinclude Program.msg.html


(defclass dnb_msgs::Program
  :super ros::object
  :slots (_name _arguments ))

(defmethod dnb_msgs::Program
  (:init
   (&key
    ((:name __name) "")
    ((:arguments __arguments) ())
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _arguments __arguments)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:arguments
   (&rest __arguments)
   (if (keywordp (car __arguments))
       (send* _arguments __arguments)
     (progn
       (if __arguments (setq _arguments (car __arguments)))
       _arguments)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; dnb_msgs/Argument[] _arguments
    (apply #'+ (send-all _arguments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; dnb_msgs/Argument[] _arguments
     (write-long (length _arguments) s)
     (dolist (elem _arguments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dnb_msgs/Argument[] _arguments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arguments (let (r) (dotimes (i n) (push (instance dnb_msgs::Argument :init) r)) r))
     (dolist (elem- _arguments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dnb_msgs::Program :md5sum-) "1d51239b0eb86a694c9fb7b883a96b58")
(setf (get dnb_msgs::Program :datatype-) "dnb_msgs/Program")
(setf (get dnb_msgs::Program :definition-)
      "string name
Argument[] arguments
================================================================================
MSG: dnb_msgs/Argument
string name
string type
string value
")



(provide :dnb_msgs/Program "1d51239b0eb86a694c9fb7b883a96b58")


