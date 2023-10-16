# Install script for directory: /home/agervig-pi/sensor_record/src/camera_control_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/agervig-pi/sensor_record/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/action" TYPE FILE FILES
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/action/GrabAndSaveImage.action"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/action/GrabHDRImage.action"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/action/GrabImages.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/msg" TYPE FILE FILES
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabAndSaveImageAction.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionGoal.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionResult.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabAndSaveImageActionFeedback.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabAndSaveImageGoal.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabAndSaveImageResult.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabAndSaveImageFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/msg" TYPE FILE FILES
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabHDRImageAction.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabHDRImageActionGoal.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabHDRImageActionResult.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabHDRImageActionFeedback.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabHDRImageGoal.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabHDRImageResult.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabHDRImageFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/msg" TYPE FILE FILES
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabImagesAction.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabImagesActionGoal.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabImagesActionResult.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabImagesActionFeedback.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabImagesGoal.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabImagesResult.msg"
    "/home/agervig-pi/sensor_record/devel/share/camera_control_msgs/msg/GrabImagesFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/srv" TYPE FILE FILES
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/srv/GetCamProperties.srv"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/srv/SetBinning.srv"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/srv/SetBool.srv"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/srv/SetBrightness.srv"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/srv/SetExposure.srv"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/srv/SetGain.srv"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/srv/SetGamma.srv"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/srv/SetROI.srv"
    "/home/agervig-pi/sensor_record/src/camera_control_msgs/srv/SetSleeping.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/cmake" TYPE FILE FILES "/home/agervig-pi/sensor_record/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/agervig-pi/sensor_record/devel/include/camera_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/agervig-pi/sensor_record/devel/share/roseus/ros/camera_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/agervig-pi/sensor_record/devel/share/common-lisp/ros/camera_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/agervig-pi/sensor_record/devel/share/gennodejs/ros/camera_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/agervig-pi/sensor_record/devel/lib/python3/dist-packages/camera_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/agervig-pi/sensor_record/devel/lib/python3/dist-packages/camera_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/agervig-pi/sensor_record/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/cmake" TYPE FILE FILES "/home/agervig-pi/sensor_record/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs/cmake" TYPE FILE FILES
    "/home/agervig-pi/sensor_record/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgsConfig.cmake"
    "/home/agervig-pi/sensor_record/build/camera_control_msgs/catkin_generated/installspace/camera_control_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_control_msgs" TYPE FILE FILES "/home/agervig-pi/sensor_record/src/camera_control_msgs/package.xml")
endif()

