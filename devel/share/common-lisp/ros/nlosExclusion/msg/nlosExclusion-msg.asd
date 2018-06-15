
(cl:in-package :asdf)

(defsystem "nlosExclusion-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Satellite_Info" :depends-on ("_package_Satellite_Info"))
    (:file "_package_Satellite_Info" :depends-on ("_package"))
    (:file "GNSS_Raw" :depends-on ("_package_GNSS_Raw"))
    (:file "_package_GNSS_Raw" :depends-on ("_package"))
    (:file "exclusionSatNum" :depends-on ("_package_exclusionSatNum"))
    (:file "_package_exclusionSatNum" :depends-on ("_package"))
    (:file "GNSS_Raw_Array" :depends-on ("_package_GNSS_Raw_Array"))
    (:file "_package_GNSS_Raw_Array" :depends-on ("_package"))
    (:file "Error" :depends-on ("_package_Error"))
    (:file "_package_Error" :depends-on ("_package"))
    (:file "DOP" :depends-on ("_package_DOP"))
    (:file "_package_DOP" :depends-on ("_package"))
  ))