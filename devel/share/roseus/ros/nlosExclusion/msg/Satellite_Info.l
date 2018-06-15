;; Auto-generated. Do not edit!


(when (boundp 'nlosExclusion::Satellite_Info)
  (if (not (find-package "NLOSEXCLUSION"))
    (make-package "NLOSEXCLUSION"))
  (shadow 'Satellite_Info (find-package "NLOSEXCLUSION")))
(unless (find-package "NLOSEXCLUSION::SATELLITE_INFO")
  (make-package "NLOSEXCLUSION::SATELLITE_INFO"))

(in-package "ROS")
;;//! \htmlinclude Satellite_Info.msg.html


(defclass nlosExclusion::Satellite_Info
  :super ros::object
  :slots (_GNSS_time _total_sv _GPSNum _BeidouNum _GPSExcluded _BeidouExcluded ))

(defmethod nlosExclusion::Satellite_Info
  (:init
   (&key
    ((:GNSS_time __GNSS_time) 0.0)
    ((:total_sv __total_sv) 0.0)
    ((:GPSNum __GPSNum) 0.0)
    ((:BeidouNum __BeidouNum) 0.0)
    ((:GPSExcluded __GPSExcluded) 0.0)
    ((:BeidouExcluded __BeidouExcluded) 0.0)
    )
   (send-super :init)
   (setq _GNSS_time (float __GNSS_time))
   (setq _total_sv (float __total_sv))
   (setq _GPSNum (float __GPSNum))
   (setq _BeidouNum (float __BeidouNum))
   (setq _GPSExcluded (float __GPSExcluded))
   (setq _BeidouExcluded (float __BeidouExcluded))
   self)
  (:GNSS_time
   (&optional __GNSS_time)
   (if __GNSS_time (setq _GNSS_time __GNSS_time)) _GNSS_time)
  (:total_sv
   (&optional __total_sv)
   (if __total_sv (setq _total_sv __total_sv)) _total_sv)
  (:GPSNum
   (&optional __GPSNum)
   (if __GPSNum (setq _GPSNum __GPSNum)) _GPSNum)
  (:BeidouNum
   (&optional __BeidouNum)
   (if __BeidouNum (setq _BeidouNum __BeidouNum)) _BeidouNum)
  (:GPSExcluded
   (&optional __GPSExcluded)
   (if __GPSExcluded (setq _GPSExcluded __GPSExcluded)) _GPSExcluded)
  (:BeidouExcluded
   (&optional __BeidouExcluded)
   (if __BeidouExcluded (setq _BeidouExcluded __BeidouExcluded)) _BeidouExcluded)
  (:serialization-length
   ()
   (+
    ;; float64 _GNSS_time
    8
    ;; float64 _total_sv
    8
    ;; float64 _GPSNum
    8
    ;; float64 _BeidouNum
    8
    ;; float64 _GPSExcluded
    8
    ;; float64 _BeidouExcluded
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _GNSS_time
       (sys::poke _GNSS_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_sv
       (sys::poke _total_sv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _GPSNum
       (sys::poke _GPSNum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _BeidouNum
       (sys::poke _BeidouNum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _GPSExcluded
       (sys::poke _GPSExcluded (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _BeidouExcluded
       (sys::poke _BeidouExcluded (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _GNSS_time
     (setq _GNSS_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_sv
     (setq _total_sv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _GPSNum
     (setq _GPSNum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _BeidouNum
     (setq _BeidouNum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _GPSExcluded
     (setq _GPSExcluded (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _BeidouExcluded
     (setq _BeidouExcluded (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nlosExclusion::Satellite_Info :md5sum-) "20a81c003be71b4e6d03512fc572c1b0")
(setf (get nlosExclusion::Satellite_Info :datatype-) "nlosExclusion/Satellite_Info")
(setf (get nlosExclusion::Satellite_Info :definition-)
      "float64 GNSS_time # Time for this epoch
float64 total_sv  # Total satellites numbers
float64 GPSNum    # GPS satellites numbers 
float64 BeidouNum # Beidou satellites numbers
float64 GPSExcluded # excluded GPS satellites numbers
float64 BeidouExcluded # excluded Beidou satellites numbers 
")



(provide :nlosExclusion/Satellite_Info "20a81c003be71b4e6d03512fc572c1b0")


