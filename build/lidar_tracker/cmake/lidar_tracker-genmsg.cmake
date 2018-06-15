# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lidar_tracker: 8 messages, 0 services")

set(MSG_I_FLAGS "-Ilidar_tracker:/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/jade/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/jade/share/sensor_msgs/cmake/../msg;-Ijsk_recognition_msgs:/opt/ros/jade/share/jsk_recognition_msgs/cmake/../msg;-Ijsk_rviz_plugins:/opt/ros/jade/share/jsk_rviz_plugins/cmake/../msg;-Ipcl_msgs:/opt/ros/jade/share/pcl_msgs/cmake/../msg;-Ijsk_footstep_msgs:/opt/ros/jade/share/jsk_footstep_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/jade/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lidar_tracker_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg" NAME_WE)
add_custom_target(_lidar_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_tracker" "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg" "geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg" NAME_WE)
add_custom_target(_lidar_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_tracker" "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg" "geometry_msgs/Twist:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Quaternion:lidar_tracker/DetectedObject:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg" NAME_WE)
add_custom_target(_lidar_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_tracker" "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg" "std_msgs/MultiArrayLayout:jsk_recognition_msgs/BoundingBox:std_msgs/Float32MultiArray:geometry_msgs/Vector3:sensor_msgs/PointField:geometry_msgs/Point:geometry_msgs/Point32:geometry_msgs/PolygonStamped:geometry_msgs/Pose:geometry_msgs/PointStamped:std_msgs/MultiArrayDimension:geometry_msgs/Polygon:std_msgs/Header:sensor_msgs/PointCloud2:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg" NAME_WE)
add_custom_target(_lidar_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_tracker" "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg" "std_msgs/MultiArrayLayout:jsk_recognition_msgs/BoundingBox:std_msgs/Float32MultiArray:geometry_msgs/Vector3:sensor_msgs/PointField:geometry_msgs/Point:geometry_msgs/Point32:geometry_msgs/PolygonStamped:geometry_msgs/Pose:geometry_msgs/PointStamped:std_msgs/MultiArrayDimension:geometry_msgs/Polygon:std_msgs/Header:lidar_tracker/CloudCluster:sensor_msgs/PointCloud2:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg" NAME_WE)
add_custom_target(_lidar_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_tracker" "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg" ""
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg" NAME_WE)
add_custom_target(_lidar_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_tracker" "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg" "lidar_tracker/geometric_rectangle:geometry_msgs/Point:lidar_tracker/vscan_tracked:std_msgs/Header"
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg" NAME_WE)
add_custom_target(_lidar_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_tracker" "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg" "geometry_msgs/Twist:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg" NAME_WE)
add_custom_target(_lidar_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_tracker" "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg" "lidar_tracker/geometric_rectangle:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_cpp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_cpp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/jade/share/jsk_recognition_msgs/cmake/../msg/BoundingBox.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_cpp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_cpp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_cpp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_cpp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_cpp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/jade/share/jsk_recognition_msgs/cmake/../msg/BoundingBox.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
)

### Generating Services

### Generating Module File
_generate_module_cpp(lidar_tracker
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lidar_tracker_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lidar_tracker_generate_messages lidar_tracker_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_cpp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_cpp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_cpp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_cpp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_cpp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_cpp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_cpp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_cpp _lidar_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_tracker_gencpp)
add_dependencies(lidar_tracker_gencpp lidar_tracker_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_tracker_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
)
_generate_msg_eus(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
)
_generate_msg_eus(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/jade/share/jsk_recognition_msgs/cmake/../msg/BoundingBox.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
)
_generate_msg_eus(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
)
_generate_msg_eus(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
)
_generate_msg_eus(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
)
_generate_msg_eus(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
)
_generate_msg_eus(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/jade/share/jsk_recognition_msgs/cmake/../msg/BoundingBox.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
)

### Generating Services

### Generating Module File
_generate_module_eus(lidar_tracker
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lidar_tracker_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lidar_tracker_generate_messages lidar_tracker_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_eus _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_eus _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_eus _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_eus _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_eus _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_eus _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_eus _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_eus _lidar_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_tracker_geneus)
add_dependencies(lidar_tracker_geneus lidar_tracker_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_tracker_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_lisp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_lisp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/jade/share/jsk_recognition_msgs/cmake/../msg/BoundingBox.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_lisp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_lisp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_lisp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_lisp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
)
_generate_msg_lisp(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/jade/share/jsk_recognition_msgs/cmake/../msg/BoundingBox.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
)

### Generating Services

### Generating Module File
_generate_module_lisp(lidar_tracker
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lidar_tracker_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lidar_tracker_generate_messages lidar_tracker_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_lisp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_lisp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_lisp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_lisp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_lisp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_lisp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_lisp _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_lisp _lidar_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_tracker_genlisp)
add_dependencies(lidar_tracker_genlisp lidar_tracker_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_tracker_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
)
_generate_msg_py(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
)
_generate_msg_py(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/jade/share/jsk_recognition_msgs/cmake/../msg/BoundingBox.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
)
_generate_msg_py(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
)
_generate_msg_py(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
)
_generate_msg_py(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
)
_generate_msg_py(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
)
_generate_msg_py(lidar_tracker
  "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/jade/share/jsk_recognition_msgs/cmake/../msg/BoundingBox.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg;/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg;/opt/ros/jade/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/jade/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
)

### Generating Services

### Generating Module File
_generate_module_py(lidar_tracker
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lidar_tracker_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lidar_tracker_generate_messages lidar_tracker_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_py _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_py _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_py _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_py _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_py _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_py _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_py _lidar_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_py _lidar_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_tracker_genpy)
add_dependencies(lidar_tracker_genpy lidar_tracker_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_tracker_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lidar_tracker_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lidar_tracker_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(lidar_tracker_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET jsk_recognition_msgs_generate_messages_cpp)
  add_dependencies(lidar_tracker_generate_messages_cpp jsk_recognition_msgs_generate_messages_cpp)
endif()
if(TARGET jsk_rviz_plugins_generate_messages_cpp)
  add_dependencies(lidar_tracker_generate_messages_cpp jsk_rviz_plugins_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lidar_tracker_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lidar_tracker_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(lidar_tracker_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET jsk_recognition_msgs_generate_messages_eus)
  add_dependencies(lidar_tracker_generate_messages_eus jsk_recognition_msgs_generate_messages_eus)
endif()
if(TARGET jsk_rviz_plugins_generate_messages_eus)
  add_dependencies(lidar_tracker_generate_messages_eus jsk_rviz_plugins_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lidar_tracker_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lidar_tracker_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(lidar_tracker_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET jsk_recognition_msgs_generate_messages_lisp)
  add_dependencies(lidar_tracker_generate_messages_lisp jsk_recognition_msgs_generate_messages_lisp)
endif()
if(TARGET jsk_rviz_plugins_generate_messages_lisp)
  add_dependencies(lidar_tracker_generate_messages_lisp jsk_rviz_plugins_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lidar_tracker_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lidar_tracker_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(lidar_tracker_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET jsk_recognition_msgs_generate_messages_py)
  add_dependencies(lidar_tracker_generate_messages_py jsk_recognition_msgs_generate_messages_py)
endif()
if(TARGET jsk_rviz_plugins_generate_messages_py)
  add_dependencies(lidar_tracker_generate_messages_py jsk_rviz_plugins_generate_messages_py)
endif()
