;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::ConfigureDatastoreExternalSource)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'ConfigureDatastoreExternalSource (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCE")
  (make-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCE"))
(unless (find-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCEREQUEST")
  (make-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCEREQUEST"))
(unless (find-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCERESPONSE")
  (make-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCERESPONSE"))

(in-package "ROS")





(defclass dnb_msgs::ConfigureDatastoreExternalSourceRequest
  :super ros::object
  :slots (_source _entries ))

(defmethod dnb_msgs::ConfigureDatastoreExternalSourceRequest
  (:init
   (&key
    ((:source __source) "")
    ((:entries __entries) ())
    )
   (send-super :init)
   (setq _source (string __source))
   (setq _entries __entries)
   self)
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
    ;; string _source
    4 (length _source)
    ;; dnb_msgs/DatastoreExternalEntry[] _entries
    (apply #'+ (send-all _entries :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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

(intern "*SUCCESS*" (find-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCERESPONSE"))
(shadow '*SUCCESS* (find-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCERESPONSE"))
(defconstant dnb_msgs::ConfigureDatastoreExternalSourceResponse::*SUCCESS* 0)
(intern "*INVALID_SOURCE*" (find-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCERESPONSE"))
(shadow '*INVALID_SOURCE* (find-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCERESPONSE"))
(defconstant dnb_msgs::ConfigureDatastoreExternalSourceResponse::*INVALID_SOURCE* 1)
(intern "*INVALID_ENTRY*" (find-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCERESPONSE"))
(shadow '*INVALID_ENTRY* (find-package "DNB_MSGS::CONFIGUREDATASTOREEXTERNALSOURCERESPONSE"))
(defconstant dnb_msgs::ConfigureDatastoreExternalSourceResponse::*INVALID_ENTRY* 2)

(defun dnb_msgs::ConfigureDatastoreExternalSourceResponse-to-symbol (const)
  (cond
        ((= const 0) 'dnb_msgs::ConfigureDatastoreExternalSourceResponse::*SUCCESS*)
        ((= const 1) 'dnb_msgs::ConfigureDatastoreExternalSourceResponse::*INVALID_SOURCE*)
        ((= const 2) 'dnb_msgs::ConfigureDatastoreExternalSourceResponse::*INVALID_ENTRY*)
        (t nil)))

(defclass dnb_msgs::ConfigureDatastoreExternalSourceResponse
  :super ros::object
  :slots (_result_code _result_message ))

(defmethod dnb_msgs::ConfigureDatastoreExternalSourceResponse
  (:init
   (&key
    ((:result_code __result_code) 0)
    ((:result_message __result_message) "")
    )
   (send-super :init)
   (setq _result_code (round __result_code))
   (setq _result_message (string __result_message))
   self)
  (:result_code
   (&optional __result_code)
   (if __result_code (setq _result_code __result_code)) _result_code)
  (:result_message
   (&optional __result_message)
   (if __result_message (setq _result_message __result_message)) _result_message)
  (:serialization-length
   ()
   (+
    ;; int32 _result_code
    4
    ;; string _result_message
    4 (length _result_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result_code
       (write-long _result_code s)
     ;; string _result_message
       (write-long (length _result_message) s) (princ _result_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result_code
     (setq _result_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _result_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dnb_msgs::ConfigureDatastoreExternalSource
  :super ros::object
  :slots ())

(setf (get dnb_msgs::ConfigureDatastoreExternalSource :md5sum-) "316e479ef71cdaadbff872e2fcd262ac")
(setf (get dnb_msgs::ConfigureDatastoreExternalSource :datatype-) "dnb_msgs/ConfigureDatastoreExternalSource")
(setf (get dnb_msgs::ConfigureDatastoreExternalSource :request) dnb_msgs::ConfigureDatastoreExternalSourceRequest)
(setf (get dnb_msgs::ConfigureDatastoreExternalSource :response) dnb_msgs::ConfigureDatastoreExternalSourceResponse)

(defmethod dnb_msgs::ConfigureDatastoreExternalSourceRequest
  (:response () (instance dnb_msgs::ConfigureDatastoreExternalSourceResponse :init)))

(setf (get dnb_msgs::ConfigureDatastoreExternalSourceRequest :md5sum-) "316e479ef71cdaadbff872e2fcd262ac")
(setf (get dnb_msgs::ConfigureDatastoreExternalSourceRequest :datatype-) "dnb_msgs/ConfigureDatastoreExternalSourceRequest")
(setf (get dnb_msgs::ConfigureDatastoreExternalSourceRequest :definition-)
      "string source
DatastoreExternalEntry[] entries

================================================================================
MSG: dnb_msgs/DatastoreExternalEntry
string source
string source_id
string value
string type
string display_title
---
int32 result_code
int32 SUCCESS = 0
int32 INVALID_SOURCE = 1
int32 INVALID_ENTRY = 2
string result_message
")

(setf (get dnb_msgs::ConfigureDatastoreExternalSourceResponse :md5sum-) "316e479ef71cdaadbff872e2fcd262ac")
(setf (get dnb_msgs::ConfigureDatastoreExternalSourceResponse :datatype-) "dnb_msgs/ConfigureDatastoreExternalSourceResponse")
(setf (get dnb_msgs::ConfigureDatastoreExternalSourceResponse :definition-)
      "string source
DatastoreExternalEntry[] entries

================================================================================
MSG: dnb_msgs/DatastoreExternalEntry
string source
string source_id
string value
string type
string display_title
---
int32 result_code
int32 SUCCESS = 0
int32 INVALID_SOURCE = 1
int32 INVALID_ENTRY = 2
string result_message
")



(provide :dnb_msgs/ConfigureDatastoreExternalSource "316e479ef71cdaadbff872e2fcd262ac")


