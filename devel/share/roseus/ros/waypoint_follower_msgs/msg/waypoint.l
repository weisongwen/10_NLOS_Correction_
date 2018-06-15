;; Auto-generated. Do not edit!


(when (boundp 'waypoint_follower_msgs::waypoint)
  (if (not (find-package "WAYPOINT_FOLLOWER_MSGS"))
    (make-package "WAYPOINT_FOLLOWER_MSGS"))
  (shadow 'waypoint (find-package "WAYPOINT_FOLLOWER_MSGS")))
(unless (find-package "WAYPOINT_FOLLOWER_MSGS::WAYPOINT")
  (make-package "WAYPOINT_FOLLOWER_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass waypoint_follower_msgs::waypoint
  :super ros::object
  :slots (_pose _twist _dtlane _change_flag ))

(defmethod waypoint_follower_msgs::waypoint
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:twist __twist) (instance geometry_msgs::TwistStamped :init))
    ((:dtlane __dtlane) (instance waypoint_follower_msgs::dtlane :init))
    ((:change_flag __change_flag) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _dtlane __dtlane)
   (setq _change_flag (round __change_flag))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:dtlane
   (&rest __dtlane)
   (if (keywordp (car __dtlane))
       (send* _dtlane __dtlane)
     (progn
       (if __dtlane (setq _dtlane (car __dtlane)))
       _dtlane)))
  (:change_flag
   (&optional __change_flag)
   (if __change_flag (setq _change_flag __change_flag)) _change_flag)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/TwistStamped _twist
    (send _twist :serialization-length)
    ;; waypoint_follower_msgs/dtlane _dtlane
    (send _dtlane :serialization-length)
    ;; int32 _change_flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; geometry_msgs/TwistStamped _twist
       (send _twist :serialize s)
     ;; waypoint_follower_msgs/dtlane _dtlane
       (send _dtlane :serialize s)
     ;; int32 _change_flag
       (write-long _change_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/TwistStamped _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; waypoint_follower_msgs/dtlane _dtlane
     (send _dtlane :deserialize buf ptr-) (incf ptr- (send _dtlane :serialization-length))
   ;; int32 _change_flag
     (setq _change_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get waypoint_follower_msgs::waypoint :md5sum-) "7d77a3b489b225916b2a1f1e14600ae8")
(setf (get waypoint_follower_msgs::waypoint :datatype-) "waypoint_follower_msgs/waypoint")
(setf (get waypoint_follower_msgs::waypoint :definition-)
      "geometry_msgs/PoseStamped pose
geometry_msgs/TwistStamped twist
dtlane dtlane
int32 change_flag

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :waypoint_follower_msgs/waypoint "7d77a3b489b225916b2a1f1e14600ae8")


