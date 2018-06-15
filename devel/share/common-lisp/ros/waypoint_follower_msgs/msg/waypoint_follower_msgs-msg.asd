
(cl:in-package :asdf)

(defsystem "waypoint_follower_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "dtlane" :depends-on ("_package_dtlane"))
    (:file "_package_dtlane" :depends-on ("_package"))
    (:file "LaneArray" :depends-on ("_package_LaneArray"))
    (:file "_package_LaneArray" :depends-on ("_package"))
    (:file "ControlCommandStamped" :depends-on ("_package_ControlCommandStamped"))
    (:file "_package_ControlCommandStamped" :depends-on ("_package"))
    (:file "ControlCommand" :depends-on ("_package_ControlCommand"))
    (:file "_package_ControlCommand" :depends-on ("_package"))
    (:file "waypoint" :depends-on ("_package_waypoint"))
    (:file "_package_waypoint" :depends-on ("_package"))
    (:file "lane" :depends-on ("_package_lane"))
    (:file "_package_lane" :depends-on ("_package"))
  ))