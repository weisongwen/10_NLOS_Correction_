;; Auto-generated. Do not edit!


(when (boundp 'lidar_tracker::vscan_tracked_array)
  (if (not (find-package "LIDAR_TRACKER"))
    (make-package "LIDAR_TRACKER"))
  (shadow 'vscan_tracked_array (find-package "LIDAR_TRACKER")))
(unless (find-package "LIDAR_TRACKER::VSCAN_TRACKED_ARRAY")
  (make-package "LIDAR_TRACKER::VSCAN_TRACKED_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude vscan_tracked_array.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar_tracker::vscan_tracked_array
  :super ros::object
  :slots (_header _obj_tracked ))

(defmethod lidar_tracker::vscan_tracked_array
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obj_tracked __obj_tracked) (let (r) (dotimes (i 0) (push (instance lidar_tracker::vscan_tracked :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _obj_tracked __obj_tracked)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obj_tracked
   (&rest __obj_tracked)
   (if (keywordp (car __obj_tracked))
       (send* _obj_tracked __obj_tracked)
     (progn
       (if __obj_tracked (setq _obj_tracked (car __obj_tracked)))
       _obj_tracked)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lidar_tracker/vscan_tracked[] _obj_tracked
    (apply #'+ (send-all _obj_tracked :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lidar_tracker/vscan_tracked[] _obj_tracked
     (write-long (length _obj_tracked) s)
     (dolist (elem _obj_tracked)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lidar_tracker/vscan_tracked[] _obj_tracked
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obj_tracked (let (r) (dotimes (i n) (push (instance lidar_tracker::vscan_tracked :init) r)) r))
     (dolist (elem- _obj_tracked)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lidar_tracker::vscan_tracked_array :md5sum-) "6452543c0811934ca1329c54d19f5c59")
(setf (get lidar_tracker::vscan_tracked_array :datatype-) "lidar_tracker/vscan_tracked_array")
(setf (get lidar_tracker::vscan_tracked_array :definition-)
      "std_msgs/Header header
vscan_tracked[] obj_tracked
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
MSG: lidar_tracker/vscan_tracked
geometry_msgs/Point position
float32 orientation
float32 velocity
geometric_rectangle geo_rect
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: lidar_tracker/geometric_rectangle
float32 wl
float32 wr
float32 lf
float32 lb
")



(provide :lidar_tracker/vscan_tracked_array "6452543c0811934ca1329c54d19f5c59")


