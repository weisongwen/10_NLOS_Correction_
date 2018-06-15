
(cl:in-package :asdf)

(defsystem "lidar_tracker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :jsk_recognition_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "vscan_tracked" :depends-on ("_package_vscan_tracked"))
    (:file "_package_vscan_tracked" :depends-on ("_package"))
    (:file "DetectedObjectArray" :depends-on ("_package_DetectedObjectArray"))
    (:file "_package_DetectedObjectArray" :depends-on ("_package"))
    (:file "geometric_rectangle" :depends-on ("_package_geometric_rectangle"))
    (:file "_package_geometric_rectangle" :depends-on ("_package"))
    (:file "vscan_tracked_array" :depends-on ("_package_vscan_tracked_array"))
    (:file "_package_vscan_tracked_array" :depends-on ("_package"))
    (:file "CloudClusterArray" :depends-on ("_package_CloudClusterArray"))
    (:file "_package_CloudClusterArray" :depends-on ("_package"))
    (:file "CloudCluster" :depends-on ("_package_CloudCluster"))
    (:file "_package_CloudCluster" :depends-on ("_package"))
    (:file "DetectedObject" :depends-on ("_package_DetectedObject"))
    (:file "_package_DetectedObject" :depends-on ("_package"))
    (:file "centroids" :depends-on ("_package_centroids"))
    (:file "_package_centroids" :depends-on ("_package"))
  ))