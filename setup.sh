#!/bin/bash
echo "Setup autonomy_stack_go2 ros2 environment"
export QT_X11_NO_MITSHM=1
export SDL_VIDEO_X11_NOMITSHM=1
export LIBGL_ALWAYS_SOFTWARE=1
export SDL_VIDEODRIVER=x11
export SDL_RENDER_DRIVER=software

source /opt/ros/humble/setup.bash
source install/setup.bash
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_DUMP_CONFIG=1
export CYCLONEDDS_URI="file://$(pwd)/cyclonedds.xml"
