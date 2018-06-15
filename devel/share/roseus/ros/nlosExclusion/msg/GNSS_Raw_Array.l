;; Auto-generated. Do not edit!


(when (boundp 'nlosExclusion::GNSS_Raw_Array)
  (if (not (find-package "NLOSEXCLUSION"))
    (make-package "NLOSEXCLUSION"))
  (shadow 'GNSS_Raw_Array (find-package "NLOSEXCLUSION")))
(unless (find-package "NLOSEXCLUSION::GNSS_RAW_ARRAY")
  (make-package "NLOSEXCLUSION::GNSS_RAW_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude GNSS_Raw_Array.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nlosExclusion::GNSS_Raw_Array
  :super ros::object
  :slots (_header _GNSS_Raws ))

(defmethod nlosExclusion::GNSS_Raw_Array
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:GNSS_Raws __GNSS_Raws) (let (r) (dotimes (i 0) (push (instance nlosExclusion::GNSS_Raw :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _GNSS_Raws __GNSS_Raws)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:GNSS_Raws
   (&rest __GNSS_Raws)
   (if (keywordp (car __GNSS_Raws))
       (send* _GNSS_Raws __GNSS_Raws)
     (progn
       (if __GNSS_Raws (setq _GNSS_Raws (car __GNSS_Raws)))
       _GNSS_Raws)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nlosExclusion/GNSS_Raw[] _GNSS_Raws
    (apply #'+ (send-all _GNSS_Raws :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nlosExclusion/GNSS_Raw[] _GNSS_Raws
     (write-long (length _GNSS_Raws) s)
     (dolist (elem _GNSS_Raws)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nlosExclusion/GNSS_Raw[] _GNSS_Raws
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _GNSS_Raws (let (r) (dotimes (i n) (push (instance nlosExclusion::GNSS_Raw :init) r)) r))
     (dolist (elem- _GNSS_Raws)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nlosExclusion::GNSS_Raw_Array :md5sum-) "8eb26aafb0dddf7c59548e059be439ec")
(setf (get nlosExclusion::GNSS_Raw_Array :datatype-) "nlosExclusion/GNSS_Raw_Array")
(setf (get nlosExclusion::GNSS_Raw_Array :definition-)
      "Header header
nlosExclusion/GNSS_Raw[] GNSS_Raws

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
MSG: nlosExclusion/GNSS_Raw
float64 GNSS_time
float64 total_sv
float64 prn_satellites_index
float64 pseudorange
float64 snr
float64 elevation
float64 azimuth
float64 err_tropo
float64 err_iono
float64 sat_clk_err
float64 sat_pos_x
float64 sat_pos_y
float64 sat_pos_z
int64 visable #0-Not sure 1-visable 2-invisable
string  sat_system

")



(provide :nlosExclusion/GNSS_Raw_Array "8eb26aafb0dddf7c59548e059be439ec")


