; Auto-generated. Do not edit!


(cl:in-package nlosExclusion-msg)


;//! \htmlinclude DOP.msg.html

(cl:defclass <DOP> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (HDOP
    :reader HDOP
    :initarg :HDOP
    :type cl:float
    :initform 0.0)
   (VDOP
    :reader VDOP
    :initarg :VDOP
    :type cl:float
    :initform 0.0)
   (DOP
    :reader DOP
    :initarg :DOP
    :type cl:float
    :initform 0.0))
)

(cl:defclass DOP (<DOP>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DOP>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DOP)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nlosExclusion-msg:<DOP> is deprecated: use nlosExclusion-msg:DOP instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:header-val is deprecated.  Use nlosExclusion-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'HDOP-val :lambda-list '(m))
(cl:defmethod HDOP-val ((m <DOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:HDOP-val is deprecated.  Use nlosExclusion-msg:HDOP instead.")
  (HDOP m))

(cl:ensure-generic-function 'VDOP-val :lambda-list '(m))
(cl:defmethod VDOP-val ((m <DOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:VDOP-val is deprecated.  Use nlosExclusion-msg:VDOP instead.")
  (VDOP m))

(cl:ensure-generic-function 'DOP-val :lambda-list '(m))
(cl:defmethod DOP-val ((m <DOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:DOP-val is deprecated.  Use nlosExclusion-msg:DOP instead.")
  (DOP m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DOP>) ostream)
  "Serializes a message object of type '<DOP>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'HDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'DOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DOP>) istream)
  "Deserializes a message object of type '<DOP>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'HDOP) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VDOP) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DOP) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DOP>)))
  "Returns string type for a message object of type '<DOP>"
  "nlosExclusion/DOP")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DOP)))
  "Returns string type for a message object of type 'DOP"
  "nlosExclusion/DOP")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DOP>)))
  "Returns md5sum for a message object of type '<DOP>"
  "3952c03502d92a32dab2225115d9ad47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DOP)))
  "Returns md5sum for a message object of type 'DOP"
  "3952c03502d92a32dab2225115d9ad47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DOP>)))
  "Returns full string definition for message of type '<DOP>"
  (cl:format cl:nil "Header header~%float64 HDOP~%float64 VDOP~%float64 DOP~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DOP)))
  "Returns full string definition for message of type 'DOP"
  (cl:format cl:nil "Header header~%float64 HDOP~%float64 VDOP~%float64 DOP~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DOP>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DOP>))
  "Converts a ROS message object to a list"
  (cl:list 'DOP
    (cl:cons ':header (header msg))
    (cl:cons ':HDOP (HDOP msg))
    (cl:cons ':VDOP (VDOP msg))
    (cl:cons ':DOP (DOP msg))
))
