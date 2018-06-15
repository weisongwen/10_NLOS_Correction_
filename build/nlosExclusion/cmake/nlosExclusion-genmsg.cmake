# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "nlosExclusion: 6 messages, 0 services")

set(MSG_I_FLAGS "-InlosExclusion:/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(nlosExclusion_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg" NAME_WE)
add_custom_target(_nlosExclusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nlosExclusion" "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg" NAME_WE)
add_custom_target(_nlosExclusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nlosExclusion" "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg" NAME_WE)
add_custom_target(_nlosExclusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nlosExclusion" "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg" ""
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg" NAME_WE)
add_custom_target(_nlosExclusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nlosExclusion" "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg" NAME_WE)
add_custom_target(_nlosExclusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nlosExclusion" "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg" ""
)

get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg" NAME_WE)
add_custom_target(_nlosExclusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nlosExclusion" "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg" "nlosExclusion/GNSS_Raw:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_cpp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_cpp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_cpp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_cpp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_cpp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nlosExclusion
)

### Generating Services

### Generating Module File
_generate_module_cpp(nlosExclusion
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nlosExclusion
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(nlosExclusion_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(nlosExclusion_generate_messages nlosExclusion_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_cpp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_cpp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_cpp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_cpp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_cpp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_cpp _nlosExclusion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nlosExclusion_gencpp)
add_dependencies(nlosExclusion_gencpp nlosExclusion_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nlosExclusion_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nlosExclusion
)
_generate_msg_eus(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nlosExclusion
)
_generate_msg_eus(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nlosExclusion
)
_generate_msg_eus(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nlosExclusion
)
_generate_msg_eus(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nlosExclusion
)
_generate_msg_eus(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nlosExclusion
)

### Generating Services

### Generating Module File
_generate_module_eus(nlosExclusion
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nlosExclusion
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(nlosExclusion_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(nlosExclusion_generate_messages nlosExclusion_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_eus _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_eus _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_eus _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_eus _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_eus _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_eus _nlosExclusion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nlosExclusion_geneus)
add_dependencies(nlosExclusion_geneus nlosExclusion_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nlosExclusion_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_lisp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_lisp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_lisp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_lisp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nlosExclusion
)
_generate_msg_lisp(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nlosExclusion
)

### Generating Services

### Generating Module File
_generate_module_lisp(nlosExclusion
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nlosExclusion
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(nlosExclusion_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(nlosExclusion_generate_messages nlosExclusion_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_lisp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_lisp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_lisp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_lisp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_lisp _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_lisp _nlosExclusion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nlosExclusion_genlisp)
add_dependencies(nlosExclusion_genlisp nlosExclusion_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nlosExclusion_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion
)
_generate_msg_py(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion
)
_generate_msg_py(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion
)
_generate_msg_py(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion
)
_generate_msg_py(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion
)
_generate_msg_py(nlosExclusion
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg"
  "${MSG_I_FLAGS}"
  "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion
)

### Generating Services

### Generating Module File
_generate_module_py(nlosExclusion
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(nlosExclusion_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(nlosExclusion_generate_messages nlosExclusion_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_py _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_py _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_py _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_py _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_py _nlosExclusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg" NAME_WE)
add_dependencies(nlosExclusion_generate_messages_py _nlosExclusion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nlosExclusion_genpy)
add_dependencies(nlosExclusion_genpy nlosExclusion_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nlosExclusion_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nlosExclusion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nlosExclusion
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(nlosExclusion_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nlosExclusion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nlosExclusion
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(nlosExclusion_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nlosExclusion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nlosExclusion
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(nlosExclusion_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nlosExclusion
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(nlosExclusion_generate_messages_py std_msgs_generate_messages_py)
endif()
