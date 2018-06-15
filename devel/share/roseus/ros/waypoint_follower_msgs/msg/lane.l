;; Auto-generated. Do not edit!


(when (boundp 'waypoint_follower_msgs::lane)
  (if (not (find-package "WAYPOINT_FOLLOWER_MSGS"))
    (make-package "WAYPOINT_FOLLOWER_MSGS"))
  (shadow 'lane (find-package "WAYPOINT_FOLLOWER_MSGS")))
(unless (find-package "WAYPOINT_FOLLOWER_MSGS::LANE")
  (make-package "WAYPOINT_FOLLOWER_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude lane.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass waypoint_follower_msgs::lane
  :super ros::object
  :slots (_header _increment _waypoints ))

(defmethod waypoint_follower_msgs::lane
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:increment __increment) 0)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance waypoint_follower_msgs::waypoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _increment (round __increment))
   (setq _waypoints __waypoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:increment
   (&optional __increment)
   (if __increment (setq _increment __increment)) _increment)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _increment
    4
    ;; waypoint_follower_msgs/waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _increment
       (write-long _increment s)
     ;; waypoint_follower_msgs/waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _increment
     (setq _increment (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; waypoint_follower_msgs/waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance waypoint_follower_msgs::waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get waypoint_follower_msgs::lane :md5sum-) "c019424de6b97427bc92ca65e30f8a13")
(setf (get waypoint_follower_msgs::lane :datatype-) "waypoint_follower_msgs/lane")
(setf (get waypoint_follower_msgs::lane :definition-)
      "Header header
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



(provide :waypoint_follower_msgs/lane "c019424de6b97427bc92ca65e30f8a13")


