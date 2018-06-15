;; Auto-generated. Do not edit!


(when (boundp 'cv_tracker_msgs::image_obj)
  (if (not (find-package "CV_TRACKER_MSGS"))
    (make-package "CV_TRACKER_MSGS"))
  (shadow 'image_obj (find-package "CV_TRACKER_MSGS")))
(unless (find-package "CV_TRACKER_MSGS::IMAGE_OBJ")
  (make-package "CV_TRACKER_MSGS::IMAGE_OBJ"))

(in-package "ROS")
;;//! \htmlinclude image_obj.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cv_tracker_msgs::image_obj
  :super ros::object
  :slots (_header _type _obj ))

(defmethod cv_tracker_msgs::image_obj
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:obj __obj) (let (r) (dotimes (i 0) (push (instance cv_tracker_msgs::image_rect :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _obj __obj)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:obj
   (&rest __obj)
   (if (keywordp (car __obj))
       (send* _obj __obj)
     (progn
       (if __obj (setq _obj (car __obj)))
       _obj)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; cv_tracker_msgs/image_rect[] _obj
    (apply #'+ (send-all _obj :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; cv_tracker_msgs/image_rect[] _obj
     (write-long (length _obj) s)
     (dolist (elem _obj)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; cv_tracker_msgs/image_rect[] _obj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obj (let (r) (dotimes (i n) (push (instance cv_tracker_msgs::image_rect :init) r)) r))
     (dolist (elem- _obj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cv_tracker_msgs::image_obj :md5sum-) "07ef08924af0932bcdf48f6ca49c8c23")
(setf (get cv_tracker_msgs::image_obj :datatype-) "cv_tracker_msgs/image_obj")
(setf (get cv_tracker_msgs::image_obj :definition-)
      "Header header
string type
image_rect[] obj
# XXX Should this message have 'score' ?

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: cv_tracker_msgs/image_rect
int32 x
int32 y
int32 height
int32 width
float32 score

")



(provide :cv_tracker_msgs/image_obj "07ef08924af0932bcdf48f6ca49c8c23")


