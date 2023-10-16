;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::DatastoreExternalEntry)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'DatastoreExternalEntry (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::DATASTOREEXTERNALENTRY")
  (make-package "DNB_MSGS::DATASTOREEXTERNALENTRY"))

(in-package "ROS")
;;//! \htmlinclude DatastoreExternalEntry.msg.html


(defclass dnb_msgs::DatastoreExternalEntry
  :super ros::object
  :slots (_source _source_id _value _type _display_title _editable ))

(defmethod dnb_msgs::DatastoreExternalEntry
  (:init
   (&key
    ((:source __source) "")
    ((:source_id __source_id) "")
    ((:value __value) "")
    ((:type __type) "")
    ((:display_title __display_title) "")
    ((:editable __editable) nil)
    )
   (send-super :init)
   (setq _source (string __source))
   (setq _source_id (string __source_id))
   (setq _value (string __value))
   (setq _type (string __type))
   (setq _display_title (string __display_title))
   (setq _editable __editable)
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:source_id
   (&optional __source_id)
   (if __source_id (setq _source_id __source_id)) _source_id)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:display_title
   (&optional __display_title)
   (if __display_title (setq _display_title __display_title)) _display_title)
  (:editable
   (&optional (__editable :null))
   (if (not (eq __editable :null)) (setq _editable __editable)) _editable)
  (:serialization-length
   ()
   (+
    ;; string _source
    4 (length _source)
    ;; string _source_id
    4 (length _source_id)
    ;; string _value
    4 (length _value)
    ;; string _type
    4 (length _type)
    ;; string _display_title
    4 (length _display_title)
    ;; bool _editable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; string _source_id
       (write-long (length _source_id) s) (princ _source_id s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _display_title
       (write-long (length _display_title) s) (princ _display_title s)
     ;; bool _editable
       (if _editable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _source_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _display_title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _display_title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _editable
     (setq _editable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dnb_msgs::DatastoreExternalEntry :md5sum-) "c5511fa9acf57fd3f2c6cc80e60bd29f")
(setf (get dnb_msgs::DatastoreExternalEntry :datatype-) "dnb_msgs/DatastoreExternalEntry")
(setf (get dnb_msgs::DatastoreExternalEntry :definition-)
      "string source
string source_id
string value
string type
string display_title
bool editable
")



(provide :dnb_msgs/DatastoreExternalEntry "c5511fa9acf57fd3f2c6cc80e60bd29f")


