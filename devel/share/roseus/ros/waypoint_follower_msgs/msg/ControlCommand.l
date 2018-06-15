;; Auto-generated. Do not edit!


(when (boundp 'waypoint_follower_msgs::ControlCommand)
  (if (not (find-package "WAYPOINT_FOLLOWER_MSGS"))
    (make-package "WAYPOINT_FOLLOWER_MSGS"))
  (shadow 'ControlCommand (find-package "WAYPOINT_FOLLOWER_MSGS")))
(unless (find-package "WAYPOINT_FOLLOWER_MSGS::CONTROLCOMMAND")
  (make-package "WAYPOINT_FOLLOWER_MSGS::CONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ControlCommand.msg.html


(defclass waypoint_follower_msgs::ControlCommand
  :super ros::object
  :slots (_linear_velocity _steering_angle ))

(defmethod waypoint_follower_msgs::ControlCommand
  (:init
   (&key
    ((:linear_velocity __linear_velocity) 0.0)
    ((:steering_angle __steering_angle) 0.0)
    )
   (send-super :init)
   (setq _linear_velocity (float __linear_velocity))
   (setq _steering_angle (float __steering_angle))
   self)
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:serialization-length
   ()
   (+
    ;; float64 _linear_velocity
    8
    ;; float64 _steering_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear_velocity
       (sys::poke _linear_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get waypoint_follower_msgs::ControlCommand :md5sum-) "6f32152926ab6255084d804f9e199d25")
(setf (get waypoint_follower_msgs::ControlCommand :datatype-) "waypoint_follower_msgs/ControlCommand")
(setf (get waypoint_follower_msgs::ControlCommand :definition-)
      "float64 linear_velocity
float64 steering_angle

")



(provide :waypoint_follower_msgs/ControlCommand "6f32152926ab6255084d804f9e199d25")


