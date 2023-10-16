;; Auto-generated. Do not edit!


(when (boundp 'wss::FloatsWithTimestamp)
  (if (not (find-package "WSS"))
    (make-package "WSS"))
  (shadow 'FloatsWithTimestamp (find-package "WSS")))
(unless (find-package "WSS::FLOATSWITHTIMESTAMP")
  (make-package "WSS::FLOATSWITHTIMESTAMP"))

(in-package "ROS")
;;//! \htmlinclude FloatsWithTimestamp.msg.html


(defclass wss::FloatsWithTimestamp
  :super ros::object
  :slots (_value _voltage _timestamp ))

(defmethod wss::FloatsWithTimestamp
  (:init
   (&key
    ((:value __value) 0.0)
    ((:voltage __voltage) 0.0)
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _value (float __value))
   (setq _voltage (float __voltage))
   (setq _timestamp __timestamp)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ;; float32 _voltage
    4
    ;; time _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wss::FloatsWithTimestamp :md5sum-) "e2e0e450eca59b8e01accf08721dbd3e")
(setf (get wss::FloatsWithTimestamp :datatype-) "wss/FloatsWithTimestamp")
(setf (get wss::FloatsWithTimestamp :definition-)
      "float32 value
float32 voltage
time timestamp

")



(provide :wss/FloatsWithTimestamp "e2e0e450eca59b8e01accf08721dbd3e")


