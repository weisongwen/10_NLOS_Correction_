; Auto-generated. Do not edit!


(cl:in-package lidar_tracker-msg)


;//! \htmlinclude vscan_tracked.msg.html

(cl:defclass <vscan_tracked> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (geo_rect
    :reader geo_rect
    :initarg :geo_rect
    :type lidar_tracker-msg:geometric_rectangle
    :initform (cl:make-instance 'lidar_tracker-msg:geometric_rectangle)))
)

(cl:defclass vscan_tracked (<vscan_tracked>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vscan_tracked>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vscan_tracked)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_tracker-msg:<vscan_tracked> is deprecated: use lidar_tracker-msg:vscan_tracked instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <vscan_tracked>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:position-val is deprecated.  Use lidar_tracker-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <vscan_tracked>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:orientation-val is deprecated.  Use lidar_tracker-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <vscan_tracked>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:velocity-val is deprecated.  Use lidar_tracker-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'geo_rect-val :lambda-list '(m))
(cl:defmethod geo_rect-val ((m <vscan_tracked>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:geo_rect-val is deprecated.  Use lidar_tracker-msg:geo_rect instead.")
  (geo_rect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vscan_tracked>) ostream)
  "Serializes a message object of type '<vscan_tracked>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'geo_rect) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vscan_tracked>) istream)
  "Deserializes a message object of type '<vscan_tracked>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'geo_rect) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vscan_tracked>)))
  "Returns string type for a message object of type '<vscan_tracked>"
  "lidar_tracker/vscan_tracked")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vscan_tracked)))
  "Returns string type for a message object of type 'vscan_tracked"
  "lidar_tracker/vscan_tracked")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vscan_tracked>)))
  "Returns md5sum for a message object of type '<vscan_tracked>"
  "bff5c0a61020da26ef210837bea359b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vscan_tracked)))
  "Returns md5sum for a message object of type 'vscan_tracked"
  "bff5c0a61020da26ef210837bea359b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vscan_tracked>)))
  "Returns full string definition for message of type '<vscan_tracked>"
  (cl:format cl:nil "geometry_msgs/Point position~%float32 orientation~%float32 velocity~%geometric_rectangle geo_rect~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lidar_tracker/geometric_rectangle~%float32 wl~%float32 wr~%float32 lf~%float32 lb~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vscan_tracked)))
  "Returns full string definition for message of type 'vscan_tracked"
  (cl:format cl:nil "geometry_msgs/Point position~%float32 orientation~%float32 velocity~%geometric_rectangle geo_rect~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lidar_tracker/geometric_rectangle~%float32 wl~%float32 wr~%float32 lf~%float32 lb~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vscan_tracked>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'geo_rect))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vscan_tracked>))
  "Converts a ROS message object to a list"
  (cl:list 'vscan_tracked
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':geo_rect (geo_rect msg))
))
