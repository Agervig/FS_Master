;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::ToastMessage)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'ToastMessage (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::TOASTMESSAGE")
  (make-package "DNB_MSGS::TOASTMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude ToastMessage.msg.html


(intern "*INFO*" (find-package "DNB_MSGS::TOASTMESSAGE"))
(shadow '*INFO* (find-package "DNB_MSGS::TOASTMESSAGE"))
(defconstant dnb_msgs::ToastMessage::*INFO* 0)
(intern "*SUCCESS*" (find-package "DNB_MSGS::TOASTMESSAGE"))
(shadow '*SUCCESS* (find-package "DNB_MSGS::TOASTMESSAGE"))
(defconstant dnb_msgs::ToastMessage::*SUCCESS* 1)
(intern "*WARNING*" (find-package "DNB_MSGS::TOASTMESSAGE"))
(shadow '*WARNING* (find-package "DNB_MSGS::TOASTMESSAGE"))
(defconstant dnb_msgs::ToastMessage::*WARNING* 2)
(intern "*ERROR*" (find-package "DNB_MSGS::TOASTMESSAGE"))
(shadow '*ERROR* (find-package "DNB_MSGS::TOASTMESSAGE"))
(defconstant dnb_msgs::ToastMessage::*ERROR* 3)

(defun dnb_msgs::ToastMessage-to-symbol (const)
  (cond
        ((= const 0) 'dnb_msgs::ToastMessage::*INFO*)
        ((= const 1) 'dnb_msgs::ToastMessage::*SUCCESS*)
        ((= const 2) 'dnb_msgs::ToastMessage::*WARNING*)
        ((= const 3) 'dnb_msgs::ToastMessage::*ERROR*)
        (t nil)))

(defclass dnb_msgs::ToastMessage
  :super ros::object
  :slots (_type _sender_id _message ))

(defmethod dnb_msgs::ToastMessage
  (:init
   (&key
    ((:type __type) 0)
    ((:sender_id __sender_id) "")
    ((:message __message) ())
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _sender_id (string __sender_id))
   (setq _message __message)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:sender_id
   (&optional __sender_id)
   (if __sender_id (setq _sender_id __sender_id)) _sender_id)
  (:message
   (&rest __message)
   (if (keywordp (car __message))
       (send* _message __message)
     (progn
       (if __message (setq _message (car __message)))
       _message)))
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; string _sender_id
    4 (length _sender_id)
    ;; dnb_msgs/ToastTranslation[] _message
    (apply #'+ (send-all _message :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; string _sender_id
       (write-long (length _sender_id) s) (princ _sender_id s)
     ;; dnb_msgs/ToastTranslation[] _message
     (write-long (length _message) s)
     (dolist (elem _message)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _sender_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dnb_msgs/ToastTranslation[] _message
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _message (let (r) (dotimes (i n) (push (instance dnb_msgs::ToastTranslation :init) r)) r))
     (dolist (elem- _message)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dnb_msgs::ToastMessage :md5sum-) "450139b6154bf1387b145b5b52133212")
(setf (get dnb_msgs::ToastMessage :datatype-) "dnb_msgs/ToastMessage")
(setf (get dnb_msgs::ToastMessage :definition-)
      "uint8 INFO=0
uint8 SUCCESS=1
uint8 WARNING=2
uint8 ERROR=3
uint8 type
string sender_id
ToastTranslation[] message
================================================================================
MSG: dnb_msgs/ToastTranslation
string language_code
string value
")



(provide :dnb_msgs/ToastMessage "450139b6154bf1387b145b5b52133212")


