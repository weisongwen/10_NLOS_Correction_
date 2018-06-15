;; Auto-generated. Do not edit!


(when (boundp 'lidar_tracker::geometric_rectangle)
  (if (not (find-package "LIDAR_TRACKER"))
    (make-package "LIDAR_TRACKER"))
  (shadow 'geometric_rectangle (find-package "LIDAR_TRACKER")))
(unless (find-package "LIDAR_TRACKER::GEOMETRIC_RECTANGLE")
  (make-package "LIDAR_TRACKER::GEOMETRIC_RECTANGLE"))

(in-package "ROS")
;;//! \htmlinclude geometric_rectangle.msg.html


(defclass lidar_tracker::geometric_rectangle
  :super ros::object
  :slots (_wl _wr _lf _lb ))

(defmethod lidar_tracker::geometric_rectangle
  (:init
   (&key
    ((:wl __wl) 0.0)
    ((:wr __wr) 0.0)
    ((:lf __lf) 0.0)
    ((:lb __lb) 0.0)
    )
   (send-super :init)
   (setq _wl (float __wl))
   (setq _wr (float __wr))
   (setq _lf (float __lf))
   (setq _lb (float __lb))
   self)
  (:wl
   (&optional __wl)
   (if __wl (setq _wl __wl)) _wl)
  (:wr
   (&optional __wr)
   (if __wr (setq _wr __wr)) _wr)
  (:lf
   (&optional __lf)
   (if __lf (setq _lf __lf)) _lf)
  (:lb
   (&optional __lb)
   (if __lb (setq _lb __lb)) _lb)
  (:serialization-length
   ()
   (+
    ;; float32 _wl
    4
    ;; float32 _wr
    4
    ;; float32 _lf
    4
    ;; float32 _lb
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _wl
       (sys::poke _wl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wr
       (sys::poke _wr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lf
       (sys::poke _lf (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lb
       (sys::poke _lb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _wl
     (setq _wl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wr
     (setq _wr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lf
     (setq _lf (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lb
     (setq _lb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lidar_tracker::geometric_rectangle :md5sum-) "b41f6cf3f78cac5a789ad3f178ef94dc")
(setf (get lidar_tracker::geometric_rectangle :datatype-) "lidar_tracker/geometric_rectangle")
(setf (get lidar_tracker::geometric_rectangle :definition-)
      "float32 wl
float32 wr
float32 lf
float32 lb
")



(provide :lidar_tracker/geometric_rectangle "b41f6cf3f78cac5a789ad3f178ef94dc")


