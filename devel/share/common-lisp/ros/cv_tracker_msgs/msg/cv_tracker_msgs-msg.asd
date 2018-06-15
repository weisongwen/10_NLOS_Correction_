
(cl:in-package :asdf)

(defsystem "cv_tracker_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "image_rect" :depends-on ("_package_image_rect"))
    (:file "_package_image_rect" :depends-on ("_package"))
    (:file "image_rect_ranged" :depends-on ("_package_image_rect_ranged"))
    (:file "_package_image_rect_ranged" :depends-on ("_package"))
    (:file "obj_label" :depends-on ("_package_obj_label"))
    (:file "_package_obj_label" :depends-on ("_package"))
    (:file "ImageObjects" :depends-on ("_package_ImageObjects"))
    (:file "_package_ImageObjects" :depends-on ("_package"))
    (:file "obj_pose" :depends-on ("_package_obj_pose"))
    (:file "_package_obj_pose" :depends-on ("_package"))
    (:file "image_obj_ranged" :depends-on ("_package_image_obj_ranged"))
    (:file "_package_image_obj_ranged" :depends-on ("_package"))
    (:file "image_obj" :depends-on ("_package_image_obj"))
    (:file "_package_image_obj" :depends-on ("_package"))
    (:file "image_obj_tracked" :depends-on ("_package_image_obj_tracked"))
    (:file "_package_image_obj_tracked" :depends-on ("_package"))
  ))