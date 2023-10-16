;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::DatastoreExternalSourceUpdate)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'DatastoreExternalSourceUpdate (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::DATASTOREEXTERNALSOURCEUPDATE")
  (make-package "DNB_MSGS::DATASTOREEXTERNALSOURCEUPDATE"))

(in-package "ROS")
;;//! \htmlinclude DatastoreExternalSourceUpdate.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dnb_msgs::DatastoreExternalSourceUpdate
  :super ros::object
  :slots (_header _source _entries ))

(defmethod dnb_msgs::DatastoreExternalSourceUpdate
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source __source) "")
    ((:entries __entries) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _source (string __source))
   (setq _entries __entries)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:entries
   (&rest __entries)
   (if (keywordp (car __entries))
       (send* _entries __entries)
     (progn
       (if __entries (setq _entries (car __entries)))
       _entries)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _source
    4 (length _source)
    ;; dnb_msgs/DatastoreExternalEntry[] _entries
    (apply #'+ (send-all _entries :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; dnb_msgs/DatastoreExternalEntry[] _entries
     (write-long (length _entries) s)
     (dolist (elem _entries)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dnb_msgs/DatastoreExternalEntry[] _entries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _entries (let (r) (dotimes (i n) (push (instance dnb_msgs::DatastoreExternalEntry :init) r)) r))
     (dolist (elem- _entries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dnb_msgs::DatastoreExternalSourceUpdate :md5sum-) "5d33e29f01329ea3b4ee770fb21f027e")
(setf (get dnb_msgs::DatastoreExternalSourceUpdate :datatype-) "dnb_msgs/DatastoreExternalSourceUpdate")
(setf (get dnb_msgs::DatastoreExternalSourceUpdate :definition-)
      "Header header
string source
DatastoreExternalEntry[] entries
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: dnb_msgs/DatastoreExternalEntry
string source
string source_id
string value
string type
string display_title
bool editable
")



(provide :dnb_msgs/DatastoreExternalSourceUpdate "5d33e29f01329ea3b4ee770fb21f027e")


