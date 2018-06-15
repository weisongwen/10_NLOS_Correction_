;; Auto-generated. Do not edit!


(when (boundp 'nlosExclusion::DOP)
  (if (not (find-package "NLOSEXCLUSION"))
    (make-package "NLOSEXCLUSION"))
  (shadow 'DOP (find-package "NLOSEXCLUSION")))
(unless (find-package "NLOSEXCLUSION::DOP")
  (make-package "NLOSEXCLUSION::DOP"))

(in-package "ROS")
;;//! \htmlinclude DOP.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nlosExclusion::DOP
  :super ros::object
  :slots (_header _HDOP _VDOP _DOP ))

(defmethod nlosExclusion::DOP
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:HDOP __HDOP) 0.0)
    ((:VDOP __VDOP) 0.0)
    ((:DOP __DOP) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _HDOP (float __HDOP))
   (setq _VDOP (float __VDOP))
   (setq _DOP (float __DOP))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:HDOP
   (&optional __HDOP)
   (if __HDOP (setq _HDOP __HDOP)) _HDOP)
  (:VDOP
   (&optional __VDOP)
   (if __VDOP (setq _VDOP __VDOP)) _VDOP)
  (:DOP
   (&optional __DOP)
   (if __DOP (setq _DOP __DOP)) _DOP)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _HDOP
    8
    ;; float64 _VDOP
    8
    ;; float64 _DOP
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _HDOP
       (sys::poke _HDOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _VDOP
       (sys::poke _VDOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _DOP
       (sys::poke _DOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _HDOP
     (setq _HDOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _VDOP
     (setq _VDOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _DOP
     (setq _DOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nlosExclusion::DOP :md5sum-) "3952c03502d92a32dab2225115d9ad47")
(setf (get nlosExclusion::DOP :datatype-) "nlosExclusion/DOP")
(setf (get nlosExclusion::DOP :definition-)
      "Header header
float64 HDOP
float64 VDOP
float64 DOP

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

")



(provide :nlosExclusion/DOP "3952c03502d92a32dab2225115d9ad47")


