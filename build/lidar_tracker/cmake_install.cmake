# Install script for directory: /home/wenws/10_NLOS_Correction_/src/lidar_tracker

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wenws/10_NLOS_Correction_/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_tracker/msg" TYPE FILE FILES
    "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/centroids.msg"
    "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudCluster.msg"
    "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/CloudClusterArray.msg"
    "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObject.msg"
    "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/DetectedObjectArray.msg"
    "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/geometric_rectangle.msg"
    "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked.msg"
    "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/msg/vscan_tracked_array.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_tracker/cmake" TYPE FILE FILES "/home/wenws/10_NLOS_Correction_/build/lidar_tracker/catkin_generated/installspace/lidar_tracker-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/devel/include/lidar_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/devel/share/roseus/ros/lidar_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/devel/share/common-lisp/ros/lidar_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/wenws/10_NLOS_Correction_/devel/lib/python2.7/dist-packages/lidar_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/devel/lib/python2.7/dist-packages/lidar_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wenws/10_NLOS_Correction_/build/lidar_tracker/catkin_generated/installspace/lidar_tracker.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_tracker/cmake" TYPE FILE FILES "/home/wenws/10_NLOS_Correction_/build/lidar_tracker/catkin_generated/installspace/lidar_tracker-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_tracker/cmake" TYPE FILE FILES
    "/home/wenws/10_NLOS_Correction_/build/lidar_tracker/catkin_generated/installspace/lidar_trackerConfig.cmake"
    "/home/wenws/10_NLOS_Correction_/build/lidar_tracker/catkin_generated/installspace/lidar_trackerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_tracker" TYPE FILE FILES "/home/wenws/10_NLOS_Correction_/src/lidar_tracker/package.xml")
endif()

