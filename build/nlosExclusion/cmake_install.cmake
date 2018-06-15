# Install script for directory: /home/wenws/10_NLOS_Correction_/src/nlosExclusion

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nlosExclusion/msg" TYPE FILE FILES
    "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw.msg"
    "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/GNSS_Raw_Array.msg"
    "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/DOP.msg"
    "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Satellite_Info.msg"
    "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/exclusionSatNum.msg"
    "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/msg/Error.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nlosExclusion/cmake" TYPE FILE FILES "/home/wenws/10_NLOS_Correction_/build/nlosExclusion/catkin_generated/installspace/nlosExclusion-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/devel/include/nlosExclusion")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/devel/share/roseus/ros/nlosExclusion")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/devel/share/common-lisp/ros/nlosExclusion")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/wenws/10_NLOS_Correction_/devel/lib/python2.7/dist-packages/nlosExclusion")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/devel/lib/python2.7/dist-packages/nlosExclusion")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wenws/10_NLOS_Correction_/build/nlosExclusion/catkin_generated/installspace/nlosExclusion.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nlosExclusion/cmake" TYPE FILE FILES "/home/wenws/10_NLOS_Correction_/build/nlosExclusion/catkin_generated/installspace/nlosExclusion-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nlosExclusion/cmake" TYPE FILE FILES
    "/home/wenws/10_NLOS_Correction_/build/nlosExclusion/catkin_generated/installspace/nlosExclusionConfig.cmake"
    "/home/wenws/10_NLOS_Correction_/build/nlosExclusion/catkin_generated/installspace/nlosExclusionConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nlosExclusion" TYPE FILE FILES "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/nlosExclusion" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/include/nlosExclusion/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nlosExclusion" TYPE FILE FILES "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/nodelets.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nlosExclusion" TYPE DIRECTORY FILES "/home/wenws/10_NLOS_Correction_/src/nlosExclusion/launch")
endif()

