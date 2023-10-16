;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::Argument)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'Argument (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::ARGUMENT")
  (make-package "DNB_MSGS::ARGUMENT"))

(in-package "ROS")
;;//! \htmlinclude Argument.msg.html


(defclass dnb_msgs::Argument
  :super ros::object
  :slots (_name _type _value ))

(defmethod dnb_msgs::Argument
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _value (string __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dnb_msgs::Argument :md5sum-) "2a06900160ca5ec95f57a5ec28eaaa33")
(setf (get dnb_msgs::Argument :datatype-) "dnb_msgs/Argument")
(setf (get dnb_msgs::Argument :definition-)
      "string name
string type
string value
")



(provide :dnb_msgs/Argument "2a06900160ca5ec95f57a5ec28eaaa33")


