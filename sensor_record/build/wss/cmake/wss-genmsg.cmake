# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wss: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iwss:/home/agervig-pi/sensor_record/src/wss/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wss_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg" NAME_WE)
add_custom_target(_wss_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wss" "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(wss
  "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wss
)

### Generating Services

### Generating Module File
_generate_module_cpp(wss
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wss
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wss_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wss_generate_messages wss_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg" NAME_WE)
add_dependencies(wss_generate_messages_cpp _wss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wss_gencpp)
add_dependencies(wss_gencpp wss_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wss_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(wss
  "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wss
)

### Generating Services

### Generating Module File
_generate_module_eus(wss
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wss
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(wss_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(wss_generate_messages wss_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg" NAME_WE)
add_dependencies(wss_generate_messages_eus _wss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wss_geneus)
add_dependencies(wss_geneus wss_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wss_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(wss
  "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wss
)

### Generating Services

### Generating Module File
_generate_module_lisp(wss
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wss
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wss_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wss_generate_messages wss_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg" NAME_WE)
add_dependencies(wss_generate_messages_lisp _wss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wss_genlisp)
add_dependencies(wss_genlisp wss_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wss_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(wss
  "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wss
)

### Generating Services

### Generating Module File
_generate_module_nodejs(wss
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wss
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(wss_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(wss_generate_messages wss_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg" NAME_WE)
add_dependencies(wss_generate_messages_nodejs _wss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wss_gennodejs)
add_dependencies(wss_gennodejs wss_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wss_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(wss
  "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wss
)

### Generating Services

### Generating Module File
_generate_module_py(wss
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wss
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wss_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wss_generate_messages wss_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agervig-pi/sensor_record/src/wss/msg/FloatsWithTimestamp.msg" NAME_WE)
add_dependencies(wss_generate_messages_py _wss_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wss_genpy)
add_dependencies(wss_genpy wss_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wss_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wss)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wss
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(wss_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wss)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wss
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(wss_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wss)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wss
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(wss_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wss)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wss
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(wss_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wss)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wss\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wss
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(wss_generate_messages_py std_msgs_generate_messages_py)
endif()
