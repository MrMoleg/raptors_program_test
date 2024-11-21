# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "raptors_task: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iraptors_task:/root/raptors_test/src/raptors_task/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(raptors_task_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/raptors_test/src/raptors_task/msg/Num.msg" NAME_WE)
add_custom_target(_raptors_task_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "raptors_task" "/root/raptors_test/src/raptors_task/msg/Num.msg" ""
)

get_filename_component(_filename "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_raptors_task_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "raptors_task" "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(raptors_task
  "/root/raptors_test/src/raptors_task/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/raptors_task
)

### Generating Services
_generate_srv_cpp(raptors_task
  "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/raptors_task
)

### Generating Module File
_generate_module_cpp(raptors_task
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/raptors_task
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(raptors_task_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(raptors_task_generate_messages raptors_task_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/raptors_test/src/raptors_task/msg/Num.msg" NAME_WE)
add_dependencies(raptors_task_generate_messages_cpp _raptors_task_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(raptors_task_generate_messages_cpp _raptors_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(raptors_task_gencpp)
add_dependencies(raptors_task_gencpp raptors_task_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS raptors_task_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(raptors_task
  "/root/raptors_test/src/raptors_task/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/raptors_task
)

### Generating Services
_generate_srv_eus(raptors_task
  "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/raptors_task
)

### Generating Module File
_generate_module_eus(raptors_task
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/raptors_task
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(raptors_task_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(raptors_task_generate_messages raptors_task_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/raptors_test/src/raptors_task/msg/Num.msg" NAME_WE)
add_dependencies(raptors_task_generate_messages_eus _raptors_task_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(raptors_task_generate_messages_eus _raptors_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(raptors_task_geneus)
add_dependencies(raptors_task_geneus raptors_task_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS raptors_task_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(raptors_task
  "/root/raptors_test/src/raptors_task/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/raptors_task
)

### Generating Services
_generate_srv_lisp(raptors_task
  "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/raptors_task
)

### Generating Module File
_generate_module_lisp(raptors_task
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/raptors_task
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(raptors_task_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(raptors_task_generate_messages raptors_task_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/raptors_test/src/raptors_task/msg/Num.msg" NAME_WE)
add_dependencies(raptors_task_generate_messages_lisp _raptors_task_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(raptors_task_generate_messages_lisp _raptors_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(raptors_task_genlisp)
add_dependencies(raptors_task_genlisp raptors_task_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS raptors_task_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(raptors_task
  "/root/raptors_test/src/raptors_task/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/raptors_task
)

### Generating Services
_generate_srv_nodejs(raptors_task
  "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/raptors_task
)

### Generating Module File
_generate_module_nodejs(raptors_task
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/raptors_task
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(raptors_task_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(raptors_task_generate_messages raptors_task_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/raptors_test/src/raptors_task/msg/Num.msg" NAME_WE)
add_dependencies(raptors_task_generate_messages_nodejs _raptors_task_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(raptors_task_generate_messages_nodejs _raptors_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(raptors_task_gennodejs)
add_dependencies(raptors_task_gennodejs raptors_task_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS raptors_task_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(raptors_task
  "/root/raptors_test/src/raptors_task/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/raptors_task
)

### Generating Services
_generate_srv_py(raptors_task
  "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/raptors_task
)

### Generating Module File
_generate_module_py(raptors_task
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/raptors_task
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(raptors_task_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(raptors_task_generate_messages raptors_task_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/raptors_test/src/raptors_task/msg/Num.msg" NAME_WE)
add_dependencies(raptors_task_generate_messages_py _raptors_task_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/raptors_test/src/raptors_task/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(raptors_task_generate_messages_py _raptors_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(raptors_task_genpy)
add_dependencies(raptors_task_genpy raptors_task_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS raptors_task_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/raptors_task)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/raptors_task
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(raptors_task_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/raptors_task)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/raptors_task
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(raptors_task_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/raptors_task)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/raptors_task
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(raptors_task_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/raptors_task)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/raptors_task
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(raptors_task_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/raptors_task)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/raptors_task\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/raptors_task
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(raptors_task_generate_messages_py std_msgs_generate_messages_py)
endif()
