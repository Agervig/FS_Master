;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::ToastTranslation)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'ToastTranslation (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::TOASTTRANSLATION")
  (make-package "DNB_MSGS::TOASTTRANSLATION"))

(in-package "ROS")
;;//! \htmlinclude ToastTranslation.msg.html


(defclass dnb_msgs::ToastTranslation
  :super ros::object
  :slots (_language_code _value ))

(defmethod dnb_msgs::ToastTranslation
  (:init
   (&key
    ((:language_code __language_code) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _language_code (string __language_code))
   (setq _value (string __value))
   self)
  (:language_code
   (&optional __language_code)
   (if __language_code (setq _language_code __language_code)) _language_code)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _language_code
    4 (length _language_code)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _language_code
       (write-long (length _language_code) s) (princ _language_code s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _language_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _language_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dnb_msgs::ToastTranslation :md5sum-) "29b983d22ef0190726766d474d9c2435")
(setf (get dnb_msgs::ToastTranslation :datatype-) "dnb_msgs/ToastTranslation")
(setf (get dnb_msgs::ToastTranslation :definition-)
      "string language_code
string value
")



(provide :dnb_msgs/ToastTranslation "29b983d22ef0190726766d474d9c2435")


