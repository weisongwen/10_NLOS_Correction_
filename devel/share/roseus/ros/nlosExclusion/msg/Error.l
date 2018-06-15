;; Auto-generated. Do not edit!


(when (boundp 'nlosExclusion::Error)
  (if (not (find-package "NLOSEXCLUSION"))
    (make-package "NLOSEXCLUSION"))
  (shadow 'Error (find-package "NLOSEXCLUSION")))
(unless (find-package "NLOSEXCLUSION::ERROR")
  (make-package "NLOSEXCLUSION::ERROR"))

(in-package "ROS")
;;//! \htmlinclude Error.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nlosExclusion::Error
  :super ros::object
  :slots (_header _errorxyz _errorxy ))

(defmethod nlosExclusion::Error
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:errorxyz __errorxyz) 0.0)
    ((:errorxy __errorxy) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _errorxyz (float __errorxyz))
   (setq _errorxy (float __errorxy))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:errorxyz
   (&optional __errorxyz)
   (if __errorxyz (setq _errorxyz __errorxyz)) _errorxyz)
  (:errorxy
   (&optional __errorxy)
   (if __errorxy (setq _errorxy __errorxy)) _errorxy)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _errorxyz
    8
    ;; float64 _errorxy
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _errorxyz
       (sys::poke _errorxyz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _errorxy
       (sys::poke _errorxy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _errorxyz
     (setq _errorxyz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _errorxy
     (setq _errorxy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nlosExclusion::Error :md5sum-) "3d5b1bfb6782c1936ae02bf67d802292")
(setf (get nlosExclusion::Error :datatype-) "nlosExclusion/Error")
(setf (get nlosExclusion::Error :definition-)
      "Header header
float64 errorxyz
float64 errorxy

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



(provide :nlosExclusion/Error "3d5b1bfb6782c1936ae02bf67d802292")


