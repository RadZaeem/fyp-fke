# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pid_ctrl: 5 messages, 0 services")

set(MSG_I_FLAGS "-Ipid_ctrl:/home/muaz/catkin_ws/src/pid_ctrl/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pid_ctrl_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelIn.msg" NAME_WE)
add_custom_target(_pid_ctrl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pid_ctrl" "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelIn.msg" ""
)

get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/lin_msg.msg" NAME_WE)
add_custom_target(_pid_ctrl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pid_ctrl" "/home/muaz/catkin_ws/src/pid_ctrl/msg/lin_msg.msg" ""
)

get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/Pose.msg" NAME_WE)
add_custom_target(_pid_ctrl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pid_ctrl" "/home/muaz/catkin_ws/src/pid_ctrl/msg/Pose.msg" ""
)

get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelOut.msg" NAME_WE)
add_custom_target(_pid_ctrl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pid_ctrl" "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelOut.msg" ""
)

get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/ang_msg.msg" NAME_WE)
add_custom_target(_pid_ctrl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pid_ctrl" "/home/muaz/catkin_ws/src/pid_ctrl/msg/ang_msg.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid_ctrl
)
_generate_msg_cpp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/lin_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid_ctrl
)
_generate_msg_cpp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid_ctrl
)
_generate_msg_cpp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid_ctrl
)
_generate_msg_cpp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/ang_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid_ctrl
)

### Generating Services

### Generating Module File
_generate_module_cpp(pid_ctrl
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid_ctrl
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pid_ctrl_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pid_ctrl_generate_messages pid_ctrl_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelIn.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_cpp _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/lin_msg.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_cpp _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/Pose.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_cpp _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelOut.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_cpp _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/ang_msg.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_cpp _pid_ctrl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pid_ctrl_gencpp)
add_dependencies(pid_ctrl_gencpp pid_ctrl_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pid_ctrl_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid_ctrl
)
_generate_msg_lisp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/lin_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid_ctrl
)
_generate_msg_lisp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid_ctrl
)
_generate_msg_lisp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid_ctrl
)
_generate_msg_lisp(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/ang_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid_ctrl
)

### Generating Services

### Generating Module File
_generate_module_lisp(pid_ctrl
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid_ctrl
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pid_ctrl_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pid_ctrl_generate_messages pid_ctrl_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelIn.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_lisp _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/lin_msg.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_lisp _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/Pose.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_lisp _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelOut.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_lisp _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/ang_msg.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_lisp _pid_ctrl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pid_ctrl_genlisp)
add_dependencies(pid_ctrl_genlisp pid_ctrl_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pid_ctrl_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid_ctrl
)
_generate_msg_py(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/lin_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid_ctrl
)
_generate_msg_py(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid_ctrl
)
_generate_msg_py(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid_ctrl
)
_generate_msg_py(pid_ctrl
  "/home/muaz/catkin_ws/src/pid_ctrl/msg/ang_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid_ctrl
)

### Generating Services

### Generating Module File
_generate_module_py(pid_ctrl
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid_ctrl
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pid_ctrl_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pid_ctrl_generate_messages pid_ctrl_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelIn.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_py _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/lin_msg.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_py _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/Pose.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_py _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/VelOut.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_py _pid_ctrl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muaz/catkin_ws/src/pid_ctrl/msg/ang_msg.msg" NAME_WE)
add_dependencies(pid_ctrl_generate_messages_py _pid_ctrl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pid_ctrl_genpy)
add_dependencies(pid_ctrl_genpy pid_ctrl_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pid_ctrl_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid_ctrl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid_ctrl
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(pid_ctrl_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(pid_ctrl_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid_ctrl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid_ctrl
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(pid_ctrl_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(pid_ctrl_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid_ctrl)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid_ctrl\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid_ctrl
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(pid_ctrl_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(pid_ctrl_generate_messages_py std_msgs_generate_messages_py)
