; Auto-generated. Do not edit!


(cl:in-package nlosExclusion-msg)


;//! \htmlinclude GNSS_Raw_Array.msg.html

(cl:defclass <GNSS_Raw_Array> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (GNSS_Raws
    :reader GNSS_Raws
    :initarg :GNSS_Raws
    :type (cl:vector nlosExclusion-msg:GNSS_Raw)
   :initform (cl:make-array 0 :element-type 'nlosExclusion-msg:GNSS_Raw :initial-element (cl:make-instance 'nlosExclusion-msg:GNSS_Raw))))
)

(cl:defclass GNSS_Raw_Array (<GNSS_Raw_Array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GNSS_Raw_Array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GNSS_Raw_Array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nlosExclusion-msg:<GNSS_Raw_Array> is deprecated: use nlosExclusion-msg:GNSS_Raw_Array instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GNSS_Raw_Array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:header-val is deprecated.  Use nlosExclusion-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'GNSS_Raws-val :lambda-list '(m))
(cl:defmethod GNSS_Raws-val ((m <GNSS_Raw_Array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:GNSS_Raws-val is deprecated.  Use nlosExclusion-msg:GNSS_Raws instead.")
  (GNSS_Raws m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GNSS_Raw_Array>) ostream)
  "Serializes a message object of type '<GNSS_Raw_Array>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'GNSS_Raws))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'GNSS_Raws))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GNSS_Raw_Array>) istream)
  "Deserializes a message object of type '<GNSS_Raw_Array>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'GNSS_Raws) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'GNSS_Raws)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nlosExclusion-msg:GNSS_Raw))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GNSS_Raw_Array>)))
  "Returns string type for a message object of type '<GNSS_Raw_Array>"
  "nlosExclusion/GNSS_Raw_Array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GNSS_Raw_Array)))
  "Returns string type for a message object of type 'GNSS_Raw_Array"
  "nlosExclusion/GNSS_Raw_Array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GNSS_Raw_Array>)))
  "Returns md5sum for a message object of type '<GNSS_Raw_Array>"
  "8eb26aafb0dddf7c59548e059be439ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GNSS_Raw_Array)))
  "Returns md5sum for a message object of type 'GNSS_Raw_Array"
  "8eb26aafb0dddf7c59548e059be439ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GNSS_Raw_Array>)))
  "Returns full string definition for message of type '<GNSS_Raw_Array>"
  (cl:format cl:nil "Header header~%nlosExclusion/GNSS_Raw[] GNSS_Raws~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nlosExclusion/GNSS_Raw~%float64 GNSS_time~%float64 total_sv~%float64 prn_satellites_index~%float64 pseudorange~%float64 snr~%float64 elevation~%float64 azimuth~%float64 err_tropo~%float64 err_iono~%float64 sat_clk_err~%float64 sat_pos_x~%float64 sat_pos_y~%float64 sat_pos_z~%int64 visable #0-Not sure 1-visable 2-invisable~%string  sat_system~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GNSS_Raw_Array)))
  "Returns full string definition for message of type 'GNSS_Raw_Array"
  (cl:format cl:nil "Header header~%nlosExclusion/GNSS_Raw[] GNSS_Raws~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nlosExclusion/GNSS_Raw~%float64 GNSS_time~%float64 total_sv~%float64 prn_satellites_index~%float64 pseudorange~%float64 snr~%float64 elevation~%float64 azimuth~%float64 err_tropo~%float64 err_iono~%float64 sat_clk_err~%float64 sat_pos_x~%float64 sat_pos_y~%float64 sat_pos_z~%int64 visable #0-Not sure 1-visable 2-invisable~%string  sat_system~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GNSS_Raw_Array>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'GNSS_Raws) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GNSS_Raw_Array>))
  "Converts a ROS message object to a list"
  (cl:list 'GNSS_Raw_Array
    (cl:cons ':header (header msg))
    (cl:cons ':GNSS_Raws (GNSS_Raws msg))
))
