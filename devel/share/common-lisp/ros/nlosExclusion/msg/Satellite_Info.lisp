; Auto-generated. Do not edit!


(cl:in-package nlosExclusion-msg)


;//! \htmlinclude Satellite_Info.msg.html

(cl:defclass <Satellite_Info> (roslisp-msg-protocol:ros-message)
  ((GNSS_time
    :reader GNSS_time
    :initarg :GNSS_time
    :type cl:float
    :initform 0.0)
   (total_sv
    :reader total_sv
    :initarg :total_sv
    :type cl:float
    :initform 0.0)
   (GPSNum
    :reader GPSNum
    :initarg :GPSNum
    :type cl:float
    :initform 0.0)
   (BeidouNum
    :reader BeidouNum
    :initarg :BeidouNum
    :type cl:float
    :initform 0.0)
   (GPSExcluded
    :reader GPSExcluded
    :initarg :GPSExcluded
    :type cl:float
    :initform 0.0)
   (BeidouExcluded
    :reader BeidouExcluded
    :initarg :BeidouExcluded
    :type cl:float
    :initform 0.0))
)

(cl:defclass Satellite_Info (<Satellite_Info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Satellite_Info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Satellite_Info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nlosExclusion-msg:<Satellite_Info> is deprecated: use nlosExclusion-msg:Satellite_Info instead.")))

(cl:ensure-generic-function 'GNSS_time-val :lambda-list '(m))
(cl:defmethod GNSS_time-val ((m <Satellite_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:GNSS_time-val is deprecated.  Use nlosExclusion-msg:GNSS_time instead.")
  (GNSS_time m))

(cl:ensure-generic-function 'total_sv-val :lambda-list '(m))
(cl:defmethod total_sv-val ((m <Satellite_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:total_sv-val is deprecated.  Use nlosExclusion-msg:total_sv instead.")
  (total_sv m))

(cl:ensure-generic-function 'GPSNum-val :lambda-list '(m))
(cl:defmethod GPSNum-val ((m <Satellite_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:GPSNum-val is deprecated.  Use nlosExclusion-msg:GPSNum instead.")
  (GPSNum m))

(cl:ensure-generic-function 'BeidouNum-val :lambda-list '(m))
(cl:defmethod BeidouNum-val ((m <Satellite_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:BeidouNum-val is deprecated.  Use nlosExclusion-msg:BeidouNum instead.")
  (BeidouNum m))

(cl:ensure-generic-function 'GPSExcluded-val :lambda-list '(m))
(cl:defmethod GPSExcluded-val ((m <Satellite_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:GPSExcluded-val is deprecated.  Use nlosExclusion-msg:GPSExcluded instead.")
  (GPSExcluded m))

(cl:ensure-generic-function 'BeidouExcluded-val :lambda-list '(m))
(cl:defmethod BeidouExcluded-val ((m <Satellite_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nlosExclusion-msg:BeidouExcluded-val is deprecated.  Use nlosExclusion-msg:BeidouExcluded instead.")
  (BeidouExcluded m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Satellite_Info>) ostream)
  "Serializes a message object of type '<Satellite_Info>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'GNSS_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_sv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'GPSNum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'BeidouNum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'GPSExcluded))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'BeidouExcluded))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Satellite_Info>) istream)
  "Deserializes a message object of type '<Satellite_Info>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GNSS_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_sv) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GPSNum) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BeidouNum) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GPSExcluded) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BeidouExcluded) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Satellite_Info>)))
  "Returns string type for a message object of type '<Satellite_Info>"
  "nlosExclusion/Satellite_Info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Satellite_Info)))
  "Returns string type for a message object of type 'Satellite_Info"
  "nlosExclusion/Satellite_Info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Satellite_Info>)))
  "Returns md5sum for a message object of type '<Satellite_Info>"
  "20a81c003be71b4e6d03512fc572c1b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Satellite_Info)))
  "Returns md5sum for a message object of type 'Satellite_Info"
  "20a81c003be71b4e6d03512fc572c1b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Satellite_Info>)))
  "Returns full string definition for message of type '<Satellite_Info>"
  (cl:format cl:nil "float64 GNSS_time # Time for this epoch~%float64 total_sv  # Total satellites numbers~%float64 GPSNum    # GPS satellites numbers ~%float64 BeidouNum # Beidou satellites numbers~%float64 GPSExcluded # excluded GPS satellites numbers~%float64 BeidouExcluded # excluded Beidou satellites numbers ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Satellite_Info)))
  "Returns full string definition for message of type 'Satellite_Info"
  (cl:format cl:nil "float64 GNSS_time # Time for this epoch~%float64 total_sv  # Total satellites numbers~%float64 GPSNum    # GPS satellites numbers ~%float64 BeidouNum # Beidou satellites numbers~%float64 GPSExcluded # excluded GPS satellites numbers~%float64 BeidouExcluded # excluded Beidou satellites numbers ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Satellite_Info>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Satellite_Info>))
  "Converts a ROS message object to a list"
  (cl:list 'Satellite_Info
    (cl:cons ':GNSS_time (GNSS_time msg))
    (cl:cons ':total_sv (total_sv msg))
    (cl:cons ':GPSNum (GPSNum msg))
    (cl:cons ':BeidouNum (BeidouNum msg))
    (cl:cons ':GPSExcluded (GPSExcluded msg))
    (cl:cons ':BeidouExcluded (BeidouExcluded msg))
))
