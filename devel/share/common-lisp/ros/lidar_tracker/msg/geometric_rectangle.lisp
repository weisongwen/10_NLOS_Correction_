; Auto-generated. Do not edit!


(cl:in-package lidar_tracker-msg)


;//! \htmlinclude geometric_rectangle.msg.html

(cl:defclass <geometric_rectangle> (roslisp-msg-protocol:ros-message)
  ((wl
    :reader wl
    :initarg :wl
    :type cl:float
    :initform 0.0)
   (wr
    :reader wr
    :initarg :wr
    :type cl:float
    :initform 0.0)
   (lf
    :reader lf
    :initarg :lf
    :type cl:float
    :initform 0.0)
   (lb
    :reader lb
    :initarg :lb
    :type cl:float
    :initform 0.0))
)

(cl:defclass geometric_rectangle (<geometric_rectangle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <geometric_rectangle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'geometric_rectangle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_tracker-msg:<geometric_rectangle> is deprecated: use lidar_tracker-msg:geometric_rectangle instead.")))

(cl:ensure-generic-function 'wl-val :lambda-list '(m))
(cl:defmethod wl-val ((m <geometric_rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:wl-val is deprecated.  Use lidar_tracker-msg:wl instead.")
  (wl m))

(cl:ensure-generic-function 'wr-val :lambda-list '(m))
(cl:defmethod wr-val ((m <geometric_rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:wr-val is deprecated.  Use lidar_tracker-msg:wr instead.")
  (wr m))

(cl:ensure-generic-function 'lf-val :lambda-list '(m))
(cl:defmethod lf-val ((m <geometric_rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:lf-val is deprecated.  Use lidar_tracker-msg:lf instead.")
  (lf m))

(cl:ensure-generic-function 'lb-val :lambda-list '(m))
(cl:defmethod lb-val ((m <geometric_rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:lb-val is deprecated.  Use lidar_tracker-msg:lb instead.")
  (lb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <geometric_rectangle>) ostream)
  "Serializes a message object of type '<geometric_rectangle>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <geometric_rectangle>) istream)
  "Deserializes a message object of type '<geometric_rectangle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lf) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lb) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<geometric_rectangle>)))
  "Returns string type for a message object of type '<geometric_rectangle>"
  "lidar_tracker/geometric_rectangle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'geometric_rectangle)))
  "Returns string type for a message object of type 'geometric_rectangle"
  "lidar_tracker/geometric_rectangle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<geometric_rectangle>)))
  "Returns md5sum for a message object of type '<geometric_rectangle>"
  "b41f6cf3f78cac5a789ad3f178ef94dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'geometric_rectangle)))
  "Returns md5sum for a message object of type 'geometric_rectangle"
  "b41f6cf3f78cac5a789ad3f178ef94dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<geometric_rectangle>)))
  "Returns full string definition for message of type '<geometric_rectangle>"
  (cl:format cl:nil "float32 wl~%float32 wr~%float32 lf~%float32 lb~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'geometric_rectangle)))
  "Returns full string definition for message of type 'geometric_rectangle"
  (cl:format cl:nil "float32 wl~%float32 wr~%float32 lf~%float32 lb~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <geometric_rectangle>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <geometric_rectangle>))
  "Converts a ROS message object to a list"
  (cl:list 'geometric_rectangle
    (cl:cons ':wl (wl msg))
    (cl:cons ':wr (wr msg))
    (cl:cons ':lf (lf msg))
    (cl:cons ':lb (lb msg))
))
