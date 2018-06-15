;; Auto-generated. Do not edit!


(when (boundp 'cv_tracker_msgs::image_rect_ranged)
  (if (not (find-package "CV_TRACKER_MSGS"))
    (make-package "CV_TRACKER_MSGS"))
  (shadow 'image_rect_ranged (find-package "CV_TRACKER_MSGS")))
(unless (find-package "CV_TRACKER_MSGS::IMAGE_RECT_RANGED")
  (make-package "CV_TRACKER_MSGS::IMAGE_RECT_RANGED"))

(in-package "ROS")
;;//! \htmlinclude image_rect_ranged.msg.html


(defclass cv_tracker_msgs::image_rect_ranged
  :super ros::object
  :slots (_rect _range _min_height _max_height ))

(defmethod cv_tracker_msgs::image_rect_ranged
  (:init
   (&key
    ((:rect __rect) (instance cv_tracker_msgs::image_rect :init))
    ((:range __range) 0.0)
    ((:min_height __min_height) 0.0)
    ((:max_height __max_height) 0.0)
    )
   (send-super :init)
   (setq _rect __rect)
   (setq _range (float __range))
   (setq _min_height (float __min_height))
   (setq _max_height (float __max_height))
   self)
  (:rect
   (&rest __rect)
   (if (keywordp (car __rect))
       (send* _rect __rect)
     (progn
       (if __rect (setq _rect (car __rect)))
       _rect)))
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:min_height
   (&optional __min_height)
   (if __min_height (setq _min_height __min_height)) _min_height)
  (:max_height
   (&optional __max_height)
   (if __max_height (setq _max_height __max_height)) _max_height)
  (:serialization-length
   ()
   (+
    ;; cv_tracker_msgs/image_rect _rect
    (send _rect :serialization-length)
    ;; float32 _range
    4
    ;; float32 _min_height
    4
    ;; float32 _max_height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cv_tracker_msgs/image_rect _rect
       (send _rect :serialize s)
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_height
       (sys::poke _min_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_height
       (sys::poke _max_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cv_tracker_msgs/image_rect _rect
     (send _rect :deserialize buf ptr-) (incf ptr- (send _rect :serialization-length))
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_height
     (setq _min_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_height
     (setq _max_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cv_tracker_msgs::image_rect_ranged :md5sum-) "3781b4778925185f71f990932766044c")
(setf (get cv_tracker_msgs::image_rect_ranged :datatype-) "cv_tracker_msgs/image_rect_ranged")
(setf (get cv_tracker_msgs::image_rect_ranged :definition-)
      "image_rect rect
float32 range
float32 min_height
float32 max_height

================================================================================
MSG: cv_tracker_msgs/image_rect
int32 x
int32 y
int32 height
int32 width
float32 score

")



(provide :cv_tracker_msgs/image_rect_ranged "3781b4778925185f71f990932766044c")


