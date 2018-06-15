;; Auto-generated. Do not edit!


(when (boundp 'nlosExclusion::GNSS_Raw)
  (if (not (find-package "NLOSEXCLUSION"))
    (make-package "NLOSEXCLUSION"))
  (shadow 'GNSS_Raw (find-package "NLOSEXCLUSION")))
(unless (find-package "NLOSEXCLUSION::GNSS_RAW")
  (make-package "NLOSEXCLUSION::GNSS_RAW"))

(in-package "ROS")
;;//! \htmlinclude GNSS_Raw.msg.html


(defclass nlosExclusion::GNSS_Raw
  :super ros::object
  :slots (_GNSS_time _total_sv _prn_satellites_index _pseudorange _snr _elevation _azimuth _err_tropo _err_iono _sat_clk_err _sat_pos_x _sat_pos_y _sat_pos_z _visable _sat_system ))

(defmethod nlosExclusion::GNSS_Raw
  (:init
   (&key
    ((:GNSS_time __GNSS_time) 0.0)
    ((:total_sv __total_sv) 0.0)
    ((:prn_satellites_index __prn_satellites_index) 0.0)
    ((:pseudorange __pseudorange) 0.0)
    ((:snr __snr) 0.0)
    ((:elevation __elevation) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:err_tropo __err_tropo) 0.0)
    ((:err_iono __err_iono) 0.0)
    ((:sat_clk_err __sat_clk_err) 0.0)
    ((:sat_pos_x __sat_pos_x) 0.0)
    ((:sat_pos_y __sat_pos_y) 0.0)
    ((:sat_pos_z __sat_pos_z) 0.0)
    ((:visable __visable) 0)
    ((:sat_system __sat_system) "")
    )
   (send-super :init)
   (setq _GNSS_time (float __GNSS_time))
   (setq _total_sv (float __total_sv))
   (setq _prn_satellites_index (float __prn_satellites_index))
   (setq _pseudorange (float __pseudorange))
   (setq _snr (float __snr))
   (setq _elevation (float __elevation))
   (setq _azimuth (float __azimuth))
   (setq _err_tropo (float __err_tropo))
   (setq _err_iono (float __err_iono))
   (setq _sat_clk_err (float __sat_clk_err))
   (setq _sat_pos_x (float __sat_pos_x))
   (setq _sat_pos_y (float __sat_pos_y))
   (setq _sat_pos_z (float __sat_pos_z))
   (setq _visable (round __visable))
   (setq _sat_system (string __sat_system))
   self)
  (:GNSS_time
   (&optional __GNSS_time)
   (if __GNSS_time (setq _GNSS_time __GNSS_time)) _GNSS_time)
  (:total_sv
   (&optional __total_sv)
   (if __total_sv (setq _total_sv __total_sv)) _total_sv)
  (:prn_satellites_index
   (&optional __prn_satellites_index)
   (if __prn_satellites_index (setq _prn_satellites_index __prn_satellites_index)) _prn_satellites_index)
  (:pseudorange
   (&optional __pseudorange)
   (if __pseudorange (setq _pseudorange __pseudorange)) _pseudorange)
  (:snr
   (&optional __snr)
   (if __snr (setq _snr __snr)) _snr)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:err_tropo
   (&optional __err_tropo)
   (if __err_tropo (setq _err_tropo __err_tropo)) _err_tropo)
  (:err_iono
   (&optional __err_iono)
   (if __err_iono (setq _err_iono __err_iono)) _err_iono)
  (:sat_clk_err
   (&optional __sat_clk_err)
   (if __sat_clk_err (setq _sat_clk_err __sat_clk_err)) _sat_clk_err)
  (:sat_pos_x
   (&optional __sat_pos_x)
   (if __sat_pos_x (setq _sat_pos_x __sat_pos_x)) _sat_pos_x)
  (:sat_pos_y
   (&optional __sat_pos_y)
   (if __sat_pos_y (setq _sat_pos_y __sat_pos_y)) _sat_pos_y)
  (:sat_pos_z
   (&optional __sat_pos_z)
   (if __sat_pos_z (setq _sat_pos_z __sat_pos_z)) _sat_pos_z)
  (:visable
   (&optional __visable)
   (if __visable (setq _visable __visable)) _visable)
  (:sat_system
   (&optional __sat_system)
   (if __sat_system (setq _sat_system __sat_system)) _sat_system)
  (:serialization-length
   ()
   (+
    ;; float64 _GNSS_time
    8
    ;; float64 _total_sv
    8
    ;; float64 _prn_satellites_index
    8
    ;; float64 _pseudorange
    8
    ;; float64 _snr
    8
    ;; float64 _elevation
    8
    ;; float64 _azimuth
    8
    ;; float64 _err_tropo
    8
    ;; float64 _err_iono
    8
    ;; float64 _sat_clk_err
    8
    ;; float64 _sat_pos_x
    8
    ;; float64 _sat_pos_y
    8
    ;; float64 _sat_pos_z
    8
    ;; int64 _visable
    8
    ;; string _sat_system
    4 (length _sat_system)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _GNSS_time
       (sys::poke _GNSS_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_sv
       (sys::poke _total_sv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _prn_satellites_index
       (sys::poke _prn_satellites_index (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pseudorange
       (sys::poke _pseudorange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _snr
       (sys::poke _snr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_tropo
       (sys::poke _err_tropo (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_iono
       (sys::poke _err_iono (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sat_clk_err
       (sys::poke _sat_clk_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sat_pos_x
       (sys::poke _sat_pos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sat_pos_y
       (sys::poke _sat_pos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sat_pos_z
       (sys::poke _sat_pos_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _visable
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _visable (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _visable) (= (length (_visable . bv)) 2)) ;; bignum
              (write-long (ash (elt (_visable . bv) 0) 0) s)
              (write-long (ash (elt (_visable . bv) 1) -1) s))
             ((and (class _visable) (= (length (_visable . bv)) 1)) ;; big1
              (write-long (elt (_visable . bv) 0) s)
              (write-long (if (>= _visable 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _visable s)(write-long (if (>= _visable 0) 0 #xffffffff) s)))
     ;; string _sat_system
       (write-long (length _sat_system) s) (princ _sat_system s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _GNSS_time
     (setq _GNSS_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_sv
     (setq _total_sv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _prn_satellites_index
     (setq _prn_satellites_index (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pseudorange
     (setq _pseudorange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _snr
     (setq _snr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _elevation
     (setq _elevation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _azimuth
     (setq _azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_tropo
     (setq _err_tropo (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_iono
     (setq _err_iono (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sat_clk_err
     (setq _sat_clk_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sat_pos_x
     (setq _sat_pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sat_pos_y
     (setq _sat_pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sat_pos_z
     (setq _sat_pos_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _visable
#+(or :alpha :irix6 :x86_64)
      (setf _visable (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _visable (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _sat_system
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sat_system (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get nlosExclusion::GNSS_Raw :md5sum-) "ef4d282f16a01f8be354e8df6c4162e0")
(setf (get nlosExclusion::GNSS_Raw :datatype-) "nlosExclusion/GNSS_Raw")
(setf (get nlosExclusion::GNSS_Raw :definition-)
      "float64 GNSS_time
float64 total_sv
float64 prn_satellites_index
float64 pseudorange
float64 snr
float64 elevation
float64 azimuth
float64 err_tropo
float64 err_iono
float64 sat_clk_err
float64 sat_pos_x
float64 sat_pos_y
float64 sat_pos_z
int64 visable #0-Not sure 1-visable 2-invisable
string  sat_system

")



(provide :nlosExclusion/GNSS_Raw "ef4d282f16a01f8be354e8df6c4162e0")


