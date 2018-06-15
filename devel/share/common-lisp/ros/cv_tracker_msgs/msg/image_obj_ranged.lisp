; Auto-generated. Do not edit!


(cl:in-package cv_tracker_msgs-msg)


;//! \htmlinclude image_obj_ranged.msg.html

(cl:defclass <image_obj_ranged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (obj
    :reader obj
    :initarg :obj
    :type (cl:vector cv_tracker_msgs-msg:image_rect_ranged)
   :initform (cl:make-array 0 :element-type 'cv_tracker_msgs-msg:image_rect_ranged :initial-element (cl:make-instance 'cv_tracker_msgs-msg:image_rect_ranged))))
)

(cl:defclass image_obj_ranged (<image_obj_ranged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image_obj_ranged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image_obj_ranged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cv_tracker_msgs-msg:<image_obj_ranged> is deprecated: use cv_tracker_msgs-msg:image_obj_ranged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <image_obj_ranged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_tracker_msgs-msg:header-val is deprecated.  Use cv_tracker_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <image_obj_ranged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_tracker_msgs-msg:type-val is deprecated.  Use cv_tracker_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'obj-val :lambda-list '(m))
(cl:defmethod obj-val ((m <image_obj_ranged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_tracker_msgs-msg:obj-val is deprecated.  Use cv_tracker_msgs-msg:obj instead.")
  (obj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image_obj_ranged>) ostream)
  "Serializes a message object of type '<image_obj_ranged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obj))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image_obj_ranged>) istream)
  "Deserializes a message object of type '<image_obj_ranged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cv_tracker_msgs-msg:image_rect_ranged))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image_obj_ranged>)))
  "Returns string type for a message object of type '<image_obj_ranged>"
  "cv_tracker_msgs/image_obj_ranged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image_obj_ranged)))
  "Returns string type for a message object of type 'image_obj_ranged"
  "cv_tracker_msgs/image_obj_ranged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image_obj_ranged>)))
  "Returns md5sum for a message object of type '<image_obj_ranged>"
  "165d0348acd5a3d4df2930a42768b95f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image_obj_ranged)))
  "Returns md5sum for a message object of type 'image_obj_ranged"
  "165d0348acd5a3d4df2930a42768b95f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image_obj_ranged>)))
  "Returns full string definition for message of type '<image_obj_ranged>"
  (cl:format cl:nil "Header header~%string type~%image_rect_ranged[] obj~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cv_tracker_msgs/image_rect_ranged~%image_rect rect~%float32 range~%float32 min_height~%float32 max_height~%~%================================================================================~%MSG: cv_tracker_msgs/image_rect~%int32 x~%int32 y~%int32 height~%int32 width~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image_obj_ranged)))
  "Returns full string definition for message of type 'image_obj_ranged"
  (cl:format cl:nil "Header header~%string type~%image_rect_ranged[] obj~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cv_tracker_msgs/image_rect_ranged~%image_rect rect~%float32 range~%float32 min_height~%float32 max_height~%~%================================================================================~%MSG: cv_tracker_msgs/image_rect~%int32 x~%int32 y~%int32 height~%int32 width~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image_obj_ranged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image_obj_ranged>))
  "Converts a ROS message object to a list"
  (cl:list 'image_obj_ranged
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':obj (obj msg))
))
