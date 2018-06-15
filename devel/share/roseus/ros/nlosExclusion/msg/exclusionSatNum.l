;; Auto-generated. Do not edit!


(when (boundp 'nlosExclusion::exclusionSatNum)
  (if (not (find-package "NLOSEXCLUSION"))
    (make-package "NLOSEXCLUSION"))
  (shadow 'exclusionSatNum (find-package "NLOSEXCLUSION")))
(unless (find-package "NLOSEXCLUSION::EXCLUSIONSATNUM")
  (make-package "NLOSEXCLUSION::EXCLUSIONSATNUM"))

(in-package "ROS")
;;//! \htmlinclude exclusionSatNum.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nlosExclusion::exclusionSatNum
  :super ros::object
  :slots (_header _satlist _totalSat ))

(defmethod nlosExclusion::exclusionSatNum
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:satlist __satlist) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:totalSat __totalSat) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _satlist __satlist)
   (setq _totalSat (float __totalSat))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:satlist
   (&optional __satlist)
   (if __satlist (setq _satlist __satlist)) _satlist)
  (:totalSat
   (&optional __totalSat)
   (if __totalSat (setq _totalSat __totalSat)) _totalSat)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _satlist
    (* 8    (length _satlist)) 4
    ;; float64 _totalSat
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _satlist
     (write-long (length _satlist) s)
     (dotimes (i (length _satlist))
       (sys::poke (elt _satlist i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _totalSat
       (sys::poke _totalSat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _satlist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _satlist (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _satlist i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _totalSat
     (setq _totalSat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nlosExclusion::exclusionSatNum :md5sum-) "9ac28900d61bd1d2d33208fbe58e703f")
(setf (get nlosExclusion::exclusionSatNum :datatype-) "nlosExclusion/exclusionSatNum")
(setf (get nlosExclusion::exclusionSatNum :definition-)
      "Header header
float64[] satlist
float64 totalSat

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



(provide :nlosExclusion/exclusionSatNum "9ac28900d61bd1d2d33208fbe58e703f")


