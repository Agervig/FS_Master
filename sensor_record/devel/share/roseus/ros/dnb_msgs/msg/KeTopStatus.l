;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::KeTopStatus)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'KeTopStatus (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::KETOPSTATUS")
  (make-package "DNB_MSGS::KETOPSTATUS"))

(in-package "ROS")
;;//! \htmlinclude KeTopStatus.msg.html


(intern "*ACK_BUTTON*" (find-package "DNB_MSGS::KETOPSTATUS"))
(shadow '*ACK_BUTTON* (find-package "DNB_MSGS::KETOPSTATUS"))
(defconstant dnb_msgs::KeTopStatus::*ACK_BUTTON* 0)
(intern "*START_BUTTON*" (find-package "DNB_MSGS::KETOPSTATUS"))
(shadow '*START_BUTTON* (find-package "DNB_MSGS::KETOPSTATUS"))
(defconstant dnb_msgs::KeTopStatus::*START_BUTTON* 13)
(intern "*STEP_BUTTON*" (find-package "DNB_MSGS::KETOPSTATUS"))
(shadow '*STEP_BUTTON* (find-package "DNB_MSGS::KETOPSTATUS"))
(defconstant dnb_msgs::KeTopStatus::*STEP_BUTTON* 18)
(intern "*MENU_BUTTON*" (find-package "DNB_MSGS::KETOPSTATUS"))
(shadow '*MENU_BUTTON* (find-package "DNB_MSGS::KETOPSTATUS"))
(defconstant dnb_msgs::KeTopStatus::*MENU_BUTTON* 23)
(intern "*WORLD*" (find-package "DNB_MSGS::KETOPSTATUS"))
(shadow '*WORLD* (find-package "DNB_MSGS::KETOPSTATUS"))
(defconstant dnb_msgs::KeTopStatus::*WORLD* 0)
(intern "*BASE*" (find-package "DNB_MSGS::KETOPSTATUS"))
(shadow '*BASE* (find-package "DNB_MSGS::KETOPSTATUS"))
(defconstant dnb_msgs::KeTopStatus::*BASE* 1)
(intern "*TOOL*" (find-package "DNB_MSGS::KETOPSTATUS"))
(shadow '*TOOL* (find-package "DNB_MSGS::KETOPSTATUS"))
(defconstant dnb_msgs::KeTopStatus::*TOOL* 2)
(intern "*JOINTS*" (find-package "DNB_MSGS::KETOPSTATUS"))
(shadow '*JOINTS* (find-package "DNB_MSGS::KETOPSTATUS"))
(defconstant dnb_msgs::KeTopStatus::*JOINTS* 3)

(defun dnb_msgs::KeTopStatus-to-symbol (const)
  (cond
        ((= const 0) 'dnb_msgs::KeTopStatus::*ACK_BUTTON*)
        ((= const 13) 'dnb_msgs::KeTopStatus::*START_BUTTON*)
        ((= const 18) 'dnb_msgs::KeTopStatus::*STEP_BUTTON*)
        ((= const 23) 'dnb_msgs::KeTopStatus::*MENU_BUTTON*)
        ((= const 0) 'dnb_msgs::KeTopStatus::*WORLD*)
        ((= const 1) 'dnb_msgs::KeTopStatus::*BASE*)
        ((= const 2) 'dnb_msgs::KeTopStatus::*TOOL*)
        ((= const 3) 'dnb_msgs::KeTopStatus::*JOINTS*)
        (t nil)))

(defclass dnb_msgs::KeTopStatus
  :super ros::object
  :slots (_buttons_active _second_active _teach_mode _auto_mode _enabling_key_pressed _jog_mode _msg ))

(defmethod dnb_msgs::KeTopStatus
  (:init
   (&key
    ((:buttons_active __buttons_active) (make-array 0 :initial-element 0 :element-type :char))
    ((:second_active __second_active) nil)
    ((:teach_mode __teach_mode) nil)
    ((:auto_mode __auto_mode) nil)
    ((:enabling_key_pressed __enabling_key_pressed) nil)
    ((:jog_mode __jog_mode) 0)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _buttons_active __buttons_active)
   (setq _second_active __second_active)
   (setq _teach_mode __teach_mode)
   (setq _auto_mode __auto_mode)
   (setq _enabling_key_pressed __enabling_key_pressed)
   (setq _jog_mode (round __jog_mode))
   (setq _msg (string __msg))
   self)
  (:buttons_active
   (&optional __buttons_active)
   (if __buttons_active (setq _buttons_active __buttons_active)) _buttons_active)
  (:second_active
   (&optional (__second_active :null))
   (if (not (eq __second_active :null)) (setq _second_active __second_active)) _second_active)
  (:teach_mode
   (&optional (__teach_mode :null))
   (if (not (eq __teach_mode :null)) (setq _teach_mode __teach_mode)) _teach_mode)
  (:auto_mode
   (&optional (__auto_mode :null))
   (if (not (eq __auto_mode :null)) (setq _auto_mode __auto_mode)) _auto_mode)
  (:enabling_key_pressed
   (&optional (__enabling_key_pressed :null))
   (if (not (eq __enabling_key_pressed :null)) (setq _enabling_key_pressed __enabling_key_pressed)) _enabling_key_pressed)
  (:jog_mode
   (&optional __jog_mode)
   (if __jog_mode (setq _jog_mode __jog_mode)) _jog_mode)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; uint8[] _buttons_active
    (* 1    (length _buttons_active)) 4
    ;; bool _second_active
    1
    ;; bool _teach_mode
    1
    ;; bool _auto_mode
    1
    ;; bool _enabling_key_pressed
    1
    ;; uint8 _jog_mode
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _buttons_active
     (write-long (length _buttons_active) s)
     (princ _buttons_active s)
     ;; bool _second_active
       (if _second_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _teach_mode
       (if _teach_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _auto_mode
       (if _auto_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _enabling_key_pressed
       (if _enabling_key_pressed (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _jog_mode
       (write-byte _jog_mode s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _buttons_active
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _buttons_active (make-array n :element-type :char))
     (replace _buttons_active buf :start2 ptr-) (incf ptr- n))
   ;; bool _second_active
     (setq _second_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _teach_mode
     (setq _teach_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auto_mode
     (setq _auto_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enabling_key_pressed
     (setq _enabling_key_pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _jog_mode
     (setq _jog_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dnb_msgs::KeTopStatus :md5sum-) "86f0ec71e85ea498020b5729ce416bde")
(setf (get dnb_msgs::KeTopStatus :datatype-) "dnb_msgs/KeTopStatus")
(setf (get dnb_msgs::KeTopStatus :definition-)
      "uint8 ACK_BUTTON=0
uint8 START_BUTTON=13
uint8 STEP_BUTTON=18
uint8 MENU_BUTTON=23
uint8[] buttons_active

bool second_active
bool teach_mode
bool auto_mode
bool enabling_key_pressed

uint8 WORLD=0
uint8 BASE=1
uint8 TOOL=2
uint8 JOINTS=3
uint8 jog_mode

string msg
")



(provide :dnb_msgs/KeTopStatus "86f0ec71e85ea498020b5729ce416bde")


