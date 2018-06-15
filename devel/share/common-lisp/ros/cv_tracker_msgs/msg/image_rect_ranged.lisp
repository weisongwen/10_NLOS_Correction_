; Auto-generated. Do not edit!


(cl:in-package cv_tracker_msgs-msg)


;//! \htmlinclude image_rect_ranged.msg.html

(cl:defclass <image_rect_ranged> (roslisp-msg-protocol:ros-message)
  ((rect
    :reader rect
    :initarg :rect
    :type cv_tracker_msgs-msg:image_rect
    :initform (cl:make-instance 'cv_tracker_msgs-msg:image_rect))
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (min_height
    :reader min_height
    :initarg :min_height
    :type cl:float
    :initform 0.0)
   (max_height
    :reader max_height
    :initarg :max_height
    :type cl:float
    :initform 0.0))
)

(cl:defclass image_rect_ranged (<image_rect_ranged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image_rect_ranged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image_rect_ranged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cv_tracker_msgs-msg:<image_rect_ranged> is deprecated: use cv_tracker_msgs-msg:image_rect_ranged instead.")))

(cl:ensure-generic-function 'rect-val :lambda-list '(m))
(cl:defmethod rect-val ((m <image_rect_ranged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_tracker_msgs-msg:rect-val is deprecated.  Use cv_tracker_msgs-msg:rect instead.")
  (rect m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <image_rect_ranged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_tracker_msgs-msg:range-val is deprecated.  Use cv_tracker_msgs-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'min_height-val :lambda-list '(m))
(cl:defmethod min_height-val ((m <image_rect_ranged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_tracker_msgs-msg:min_height-val is deprecated.  Use cv_tracker_msgs-msg:min_height instead.")
  (min_height m))

(cl:ensure-generic-function 'max_height-val :lambda-list '(m))
(cl:defmethod max_height-val ((m <image_rect_ranged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_tracker_msgs-msg:max_height-val is deprecated.  Use cv_tracker_msgs-msg:max_height instead.")
  (max_height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image_rect_ranged>) ostream)
  "Serializes a message object of type '<image_rect_ranged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rect) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image_rect_ranged>) istream)
  "Deserializes a message object of type '<image_rect_ranged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rect) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image_rect_ranged>)))
  "Returns string type for a message object of type '<image_rect_ranged>"
  "cv_tracker_msgs/image_rect_ranged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image_rect_ranged)))
  "Returns string type for a message object of type 'image_rect_ranged"
  "cv_tracker_msgs/image_rect_ranged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image_rect_ranged>)))
  "Returns md5sum for a message object of type '<image_rect_ranged>"
  "3781b4778925185f71f990932766044c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image_rect_ranged)))
  "Returns md5sum for a message object of type 'image_rect_ranged"
  "3781b4778925185f71f990932766044c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image_rect_ranged>)))
  "Returns full string definition for message of type '<image_rect_ranged>"
  (cl:format cl:nil "image_rect rect~%float32 range~%float32 min_height~%float32 max_height~%~%================================================================================~%MSG: cv_tracker_msgs/image_rect~%int32 x~%int32 y~%int32 height~%int32 width~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image_rect_ranged)))
  "Returns full string definition for message of type 'image_rect_ranged"
  (cl:format cl:nil "image_rect rect~%float32 range~%float32 min_height~%float32 max_height~%~%================================================================================~%MSG: cv_tracker_msgs/image_rect~%int32 x~%int32 y~%int32 height~%int32 width~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image_rect_ranged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rect))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image_rect_ranged>))
  "Converts a ROS message object to a list"
  (cl:list 'image_rect_ranged
    (cl:cons ':rect (rect msg))
    (cl:cons ':range (range msg))
    (cl:cons ':min_height (min_height msg))
    (cl:cons ':max_height (max_height msg))
))
