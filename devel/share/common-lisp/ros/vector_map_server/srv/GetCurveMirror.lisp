; Auto-generated. Do not edit!


(cl:in-package vector_map_server-srv)


;//! \htmlinclude GetCurveMirror-request.msg.html

(cl:defclass <GetCurveMirror-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type waypoint_follower_msgs-msg:lane
    :initform (cl:make-instance 'waypoint_follower_msgs-msg:lane)))
)

(cl:defclass GetCurveMirror-request (<GetCurveMirror-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurveMirror-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurveMirror-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_map_server-srv:<GetCurveMirror-request> is deprecated: use vector_map_server-srv:GetCurveMirror-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetCurveMirror-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:pose-val is deprecated.  Use vector_map_server-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <GetCurveMirror-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:waypoints-val is deprecated.  Use vector_map_server-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurveMirror-request>) ostream)
  "Serializes a message object of type '<GetCurveMirror-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurveMirror-request>) istream)
  "Deserializes a message object of type '<GetCurveMirror-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurveMirror-request>)))
  "Returns string type for a service object of type '<GetCurveMirror-request>"
  "vector_map_server/GetCurveMirrorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurveMirror-request)))
  "Returns string type for a service object of type 'GetCurveMirror-request"
  "vector_map_server/GetCurveMirrorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurveMirror-request>)))
  "Returns md5sum for a message object of type '<GetCurveMirror-request>"
  "a3a1c7348b0d5939dc928bb96d45d441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurveMirror-request)))
  "Returns md5sum for a message object of type 'GetCurveMirror-request"
  "a3a1c7348b0d5939dc928bb96d45d441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurveMirror-request>)))
  "Returns full string definition for message of type '<GetCurveMirror-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%waypoint_follower_msgs/lane waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: waypoint_follower_msgs/lane~%Header header~%int32 increment~%waypoint[] waypoints~%================================================================================~%MSG: waypoint_follower_msgs/waypoint~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%dtlane dtlane~%int32 change_flag~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: waypoint_follower_msgs/dtlane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurveMirror-request)))
  "Returns full string definition for message of type 'GetCurveMirror-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%waypoint_follower_msgs/lane waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: waypoint_follower_msgs/lane~%Header header~%int32 increment~%waypoint[] waypoints~%================================================================================~%MSG: waypoint_follower_msgs/waypoint~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%dtlane dtlane~%int32 change_flag~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: waypoint_follower_msgs/dtlane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurveMirror-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurveMirror-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurveMirror-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':waypoints (waypoints msg))
))
;//! \htmlinclude GetCurveMirror-response.msg.html

(cl:defclass <GetCurveMirror-response> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type vector_map_msgs-msg:CurveMirrorArray
    :initform (cl:make-instance 'vector_map_msgs-msg:CurveMirrorArray)))
)

(cl:defclass GetCurveMirror-response (<GetCurveMirror-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurveMirror-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurveMirror-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_map_server-srv:<GetCurveMirror-response> is deprecated: use vector_map_server-srv:GetCurveMirror-response instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <GetCurveMirror-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:objects-val is deprecated.  Use vector_map_server-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurveMirror-response>) ostream)
  "Serializes a message object of type '<GetCurveMirror-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'objects) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurveMirror-response>) istream)
  "Deserializes a message object of type '<GetCurveMirror-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'objects) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurveMirror-response>)))
  "Returns string type for a service object of type '<GetCurveMirror-response>"
  "vector_map_server/GetCurveMirrorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurveMirror-response)))
  "Returns string type for a service object of type 'GetCurveMirror-response"
  "vector_map_server/GetCurveMirrorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurveMirror-response>)))
  "Returns md5sum for a message object of type '<GetCurveMirror-response>"
  "a3a1c7348b0d5939dc928bb96d45d441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurveMirror-response)))
  "Returns md5sum for a message object of type 'GetCurveMirror-response"
  "a3a1c7348b0d5939dc928bb96d45d441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurveMirror-response>)))
  "Returns full string definition for message of type '<GetCurveMirror-response>"
  (cl:format cl:nil "vector_map_msgs/CurveMirrorArray objects~%~%~%================================================================================~%MSG: vector_map_msgs/CurveMirrorArray~%Header header~%CurveMirror[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/CurveMirror~%# Ver 1.10~%int32 id~%int32 vid~%int32 plid~%int32 type # differ from specification~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurveMirror-response)))
  "Returns full string definition for message of type 'GetCurveMirror-response"
  (cl:format cl:nil "vector_map_msgs/CurveMirrorArray objects~%~%~%================================================================================~%MSG: vector_map_msgs/CurveMirrorArray~%Header header~%CurveMirror[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/CurveMirror~%# Ver 1.10~%int32 id~%int32 vid~%int32 plid~%int32 type # differ from specification~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurveMirror-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'objects))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurveMirror-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurveMirror-response
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurveMirror)))
  'GetCurveMirror-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurveMirror)))
  'GetCurveMirror-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurveMirror)))
  "Returns string type for a service object of type '<GetCurveMirror>"
  "vector_map_server/GetCurveMirror")