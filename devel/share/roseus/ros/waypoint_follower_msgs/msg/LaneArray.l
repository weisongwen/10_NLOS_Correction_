;; Auto-generated. Do not edit!


(when (boundp 'waypoint_follower_msgs::LaneArray)
  (if (not (find-package "WAYPOINT_FOLLOWER_MSGS"))
    (make-package "WAYPOINT_FOLLOWER_MSGS"))
  (shadow 'LaneArray (find-package "WAYPOINT_FOLLOWER_MSGS")))
(unless (find-package "WAYPOINT_FOLLOWER_MSGS::LANEARRAY")
  (make-package "WAYPOINT_FOLLOWER_MSGS::LANEARRAY"))

(in-package "ROS")
;;//! \htmlinclude LaneArray.msg.html


(defclass waypoint_follower_msgs::LaneArray
  :super ros::object
  :slots (_lanes ))

(defmethod waypoint_follower_msgs::LaneArray
  (:init
   (&key
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance waypoint_follower_msgs::lane :init) r)) r))
    )
   (send-super :init)
   (setq _lanes __lanes)
   self)
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; waypoint_follower_msgs/lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; waypoint_follower_msgs/lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; waypoint_follower_msgs/lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance waypoint_follower_msgs::lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get waypoint_follower_msgs::LaneArray :md5sum-) "8c9ed0ce95a2ae286c16450b19ed29c5")
(setf (get waypoint_follower_msgs::LaneArray :datatype-) "waypoint_follower_msgs/LaneArray")
(setf (get waypoint_follower_msgs::LaneArray :definition-)
      "lane[] lanes
================================================================================
MSG: waypoint_follower_msgs/lane
Header header
int32 increment
waypoint[] waypoints
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
MSG: waypoint_follower_msgs/waypoint
geometry_msgs/PoseStamped pose
geometry_msgs/TwistStamped twist
dtlane dtlane
int32 change_flag

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: waypoint_follower_msgs/dtlane
float64 dist
float64 dir
float64 apara
float64 r
float64 slope
float64 cant
float64 lw
float64 rw

")



(provide :waypoint_follower_msgs/LaneArray "8c9ed0ce95a2ae286c16450b19ed29c5")


