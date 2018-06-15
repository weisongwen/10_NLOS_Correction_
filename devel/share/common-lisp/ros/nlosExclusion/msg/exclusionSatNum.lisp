; Auto-generated. Do not edit!


(cl:in-package nlosExclusion-msg)


;//! \htmlinclude exclusionSatNum.msg.html

(cl:defclass <exclusionSatNum> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (satlist
    :reader satlist
    :initarg :satlist
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (totalSat
    :reader totalSat
    :initarg :totalSat
    :type cl:float
    :initform 0.0))
)

(cl:defclass exclusionSatNum (<exclusionSatNum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <exclusionSatNum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'exclusionSatNum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nlosExclusion-msg:<exclusionSatNum> is deprecated: use nlosExclusion-msg:exclusionSatNum instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <exclusionSatNum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:header-val is deprecated.  Use nlosExclusion-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'satlist-val :lambda-list '(m))
(cl:defmethod satlist-val ((m <exclusionSatNum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:satlist-val is deprecated.  Use nlosExclusion-msg:satlist instead.")
  (satlist m))

(cl:ensure-generic-function 'totalSat-val :lambda-list '(m))
(cl:defmethod totalSat-val ((m <exclusionSatNum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:totalSat-val is deprecated.  Use nlosExclusion-msg:totalSat instead.")
  (totalSat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <exclusionSatNum>) ostream)
  "Serializes a message object of type '<exclusionSatNum>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'satlist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'satlist))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'totalSat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <exclusionSatNum>) istream)
  "Deserializes a message object of type '<exclusionSatNum>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'satlist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'satlist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'totalSat) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<exclusionSatNum>)))
  "Returns string type for a message object of type '<exclusionSatNum>"
  "nlosExclusion/exclusionSatNum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'exclusionSatNum)))
  "Returns string type for a message object of type 'exclusionSatNum"
  "nlosExclusion/exclusionSatNum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<exclusionSatNum>)))
  "Returns md5sum for a message object of type '<exclusionSatNum>"
  "9ac28900d61bd1d2d33208fbe58e703f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'exclusionSatNum)))
  "Returns md5sum for a message object of type 'exclusionSatNum"
  "9ac28900d61bd1d2d33208fbe58e703f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<exclusionSatNum>)))
  "Returns full string definition for message of type '<exclusionSatNum>"
  (cl:format cl:nil "Header header~%float64[] satlist~%float64 totalSat~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'exclusionSatNum)))
  "Returns full string definition for message of type 'exclusionSatNum"
  (cl:format cl:nil "Header header~%float64[] satlist~%float64 totalSat~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <exclusionSatNum>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'satlist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <exclusionSatNum>))
  "Converts a ROS message object to a list"
  (cl:list 'exclusionSatNum
    (cl:cons ':header (header msg))
    (cl:cons ':satlist (satlist msg))
    (cl:cons ':totalSat (totalSat msg))
))
