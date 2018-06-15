; Auto-generated. Do not edit!


(cl:in-package lidar_tracker-msg)


;//! \htmlinclude vscan_tracked_array.msg.html

(cl:defclass <vscan_tracked_array> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obj_tracked
    :reader obj_tracked
    :initarg :obj_tracked
    :type (cl:vector lidar_tracker-msg:vscan_tracked)
   :initform (cl:make-array 0 :element-type 'lidar_tracker-msg:vscan_tracked :initial-element (cl:make-instance 'lidar_tracker-msg:vscan_tracked))))
)

(cl:defclass vscan_tracked_array (<vscan_tracked_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vscan_tracked_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vscan_tracked_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_tracker-msg:<vscan_tracked_array> is deprecated: use lidar_tracker-msg:vscan_tracked_array instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <vscan_tracked_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:header-val is deprecated.  Use lidar_tracker-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obj_tracked-val :lambda-list '(m))
(cl:defmethod obj_tracked-val ((m <vscan_tracked_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:obj_tracked-val is deprecated.  Use lidar_tracker-msg:obj_tracked instead.")
  (obj_tracked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vscan_tracked_array>) ostream)
  "Serializes a message object of type '<vscan_tracked_array>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obj_tracked))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obj_tracked))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vscan_tracked_array>) istream)
  "Deserializes a message object of type '<vscan_tracked_array>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obj_tracked) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obj_tracked)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lidar_tracker-msg:vscan_tracked))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vscan_tracked_array>)))
  "Returns string type for a message object of type '<vscan_tracked_array>"
  "lidar_tracker/vscan_tracked_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vscan_tracked_array)))
  "Returns string type for a message object of type 'vscan_tracked_array"
  "lidar_tracker/vscan_tracked_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vscan_tracked_array>)))
  "Returns md5sum for a message object of type '<vscan_tracked_array>"
  "6452543c0811934ca1329c54d19f5c59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vscan_tracked_array)))
  "Returns md5sum for a message object of type 'vscan_tracked_array"
  "6452543c0811934ca1329c54d19f5c59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vscan_tracked_array>)))
  "Returns full string definition for message of type '<vscan_tracked_array>"
  (cl:format cl:nil "std_msgs/Header header~%vscan_tracked[] obj_tracked~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidar_tracker/vscan_tracked~%geometry_msgs/Point position~%float32 orientation~%float32 velocity~%geometric_rectangle geo_rect~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lidar_tracker/geometric_rectangle~%float32 wl~%float32 wr~%float32 lf~%float32 lb~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vscan_tracked_array)))
  "Returns full string definition for message of type 'vscan_tracked_array"
  (cl:format cl:nil "std_msgs/Header header~%vscan_tracked[] obj_tracked~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidar_tracker/vscan_tracked~%geometry_msgs/Point position~%float32 orientation~%float32 velocity~%geometric_rectangle geo_rect~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lidar_tracker/geometric_rectangle~%float32 wl~%float32 wr~%float32 lf~%float32 lb~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vscan_tracked_array>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obj_tracked) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vscan_tracked_array>))
  "Converts a ROS message object to a list"
  (cl:list 'vscan_tracked_array
    (cl:cons ':header (header msg))
    (cl:cons ':obj_tracked (obj_tracked msg))
))
