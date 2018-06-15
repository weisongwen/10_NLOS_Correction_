; Auto-generated. Do not edit!


(cl:in-package vector_map_server-srv)


;//! \htmlinclude GetLane-request.msg.html

(cl:defclass <GetLane-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetLane-request (<GetLane-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLane-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLane-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_map_server-srv:<GetLane-request> is deprecated: use vector_map_server-srv:GetLane-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetLane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:pose-val is deprecated.  Use vector_map_server-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <GetLane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:waypoints-val is deprecated.  Use vector_map_server-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLane-request>) ostream)
  "Serializes a message object of type '<GetLane-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLane-request>) istream)
  "Deserializes a message object of type '<GetLane-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLane-request>)))
  "Returns string type for a service object of type '<GetLane-request>"
  "vector_map_server/GetLaneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLane-request)))
  "Returns string type for a service object of type 'GetLane-request"
  "vector_map_server/GetLaneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLane-request>)))
  "Returns md5sum for a message object of type '<GetLane-request>"
  "8aa6e158c4d222772472a1feff556e34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLane-request)))
  "Returns md5sum for a message object of type 'GetLane-request"
  "8aa6e158c4d222772472a1feff556e34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLane-request>)))
  "Returns full string definition for message of type '<GetLane-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%waypoint_follower_msgs/lane waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: waypoint_follower_msgs/lane~%Header header~%int32 increment~%waypoint[] waypoints~%================================================================================~%MSG: waypoint_follower_msgs/waypoint~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%dtlane dtlane~%int32 change_flag~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: waypoint_follower_msgs/dtlane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLane-request)))
  "Returns full string definition for message of type 'GetLane-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%waypoint_follower_msgs/lane waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: waypoint_follower_msgs/lane~%Header header~%int32 increment~%waypoint[] waypoints~%================================================================================~%MSG: waypoint_follower_msgs/waypoint~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%dtlane dtlane~%int32 change_flag~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: waypoint_follower_msgs/dtlane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLane-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLane-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLane-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':waypoints (waypoints msg))
))
;//! \htmlinclude GetLane-response.msg.html

(cl:defclass <GetLane-response> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type vector_map_msgs-msg:LaneArray
    :initform (cl:make-instance 'vector_map_msgs-msg:LaneArray)))
)

(cl:defclass GetLane-response (<GetLane-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLane-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLane-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_map_server-srv:<GetLane-response> is deprecated: use vector_map_server-srv:GetLane-response instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <GetLane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:objects-val is deprecated.  Use vector_map_server-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLane-response>) ostream)
  "Serializes a message object of type '<GetLane-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'objects) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLane-response>) istream)
  "Deserializes a message object of type '<GetLane-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'objects) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLane-response>)))
  "Returns string type for a service object of type '<GetLane-response>"
  "vector_map_server/GetLaneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLane-response)))
  "Returns string type for a service object of type 'GetLane-response"
  "vector_map_server/GetLaneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLane-response>)))
  "Returns md5sum for a message object of type '<GetLane-response>"
  "8aa6e158c4d222772472a1feff556e34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLane-response)))
  "Returns md5sum for a message object of type 'GetLane-response"
  "8aa6e158c4d222772472a1feff556e34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLane-response>)))
  "Returns full string definition for message of type '<GetLane-response>"
  (cl:format cl:nil "vector_map_msgs/LaneArray objects~%~%~%================================================================================~%MSG: vector_map_msgs/LaneArray~%Header header~%Lane[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/Lane~%# jct~%uint8 NORMAL=0~%uint8 LEFT_BRANCHING=1~%uint8 RIGHT_BRANCHING=2~%uint8 LEFT_MERGING=3~%uint8 RIGHT_MERGING=4~%uint8 COMPOSITION=5~%~%# lanetype~%uint8 STRAIGHT=0~%uint8 LEFT_TURN=1~%uint8 RIGHT_TURN=2~%~%# lanecfgfg~%uint8 PASS=0~%uint8 FAIL=1~%~%# Ver 1.00~%int32 lnid~%int32 did~%int32 blid~%int32 flid~%int32 bnid~%int32 fnid~%int32 jct~%int32 blid2~%int32 blid3~%int32 blid4~%int32 flid2~%int32 flid3~%int32 flid4~%int32 clossid~%float64 span~%int32 lcnt~%int32 lno~%~%# Ver 1.20~%int32 lanetype~%int32 limitvel~%int32 refvel~%int32 roadsecid~%int32 lanecfgfg~%int32 linkwaid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLane-response)))
  "Returns full string definition for message of type 'GetLane-response"
  (cl:format cl:nil "vector_map_msgs/LaneArray objects~%~%~%================================================================================~%MSG: vector_map_msgs/LaneArray~%Header header~%Lane[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/Lane~%# jct~%uint8 NORMAL=0~%uint8 LEFT_BRANCHING=1~%uint8 RIGHT_BRANCHING=2~%uint8 LEFT_MERGING=3~%uint8 RIGHT_MERGING=4~%uint8 COMPOSITION=5~%~%# lanetype~%uint8 STRAIGHT=0~%uint8 LEFT_TURN=1~%uint8 RIGHT_TURN=2~%~%# lanecfgfg~%uint8 PASS=0~%uint8 FAIL=1~%~%# Ver 1.00~%int32 lnid~%int32 did~%int32 blid~%int32 flid~%int32 bnid~%int32 fnid~%int32 jct~%int32 blid2~%int32 blid3~%int32 blid4~%int32 flid2~%int32 flid3~%int32 flid4~%int32 clossid~%float64 span~%int32 lcnt~%int32 lno~%~%# Ver 1.20~%int32 lanetype~%int32 limitvel~%int32 refvel~%int32 roadsecid~%int32 lanecfgfg~%int32 linkwaid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLane-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'objects))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLane-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLane-response
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLane)))
  'GetLane-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLane)))
  'GetLane-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLane)))
  "Returns string type for a service object of type '<GetLane>"
  "vector_map_server/GetLane")