# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anish/ws4/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anish/ws4/build

# Include any dependencies generated for this target.
include main1/CMakeFiles/apriltags_demo.dir/depend.make

# Include the progress variables for this target.
include main1/CMakeFiles/apriltags_demo.dir/progress.make

# Include the compile flags for this target's objects.
include main1/CMakeFiles/apriltags_demo.dir/flags.make

main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o: main1/CMakeFiles/apriltags_demo.dir/flags.make
main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o: /home/anish/ws4/src/main1/src/apriltags_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anish/ws4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o"
	cd /home/anish/ws4/build/main1 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o -c /home/anish/ws4/src/main1/src/apriltags_demo.cpp

main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.i"
	cd /home/anish/ws4/build/main1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anish/ws4/src/main1/src/apriltags_demo.cpp > CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.i

main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.s"
	cd /home/anish/ws4/build/main1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anish/ws4/src/main1/src/apriltags_demo.cpp -o CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.s

main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o.requires:

.PHONY : main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o.requires

main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o.provides: main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o.requires
	$(MAKE) -f main1/CMakeFiles/apriltags_demo.dir/build.make main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o.provides.build
.PHONY : main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o.provides

main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o.provides.build: main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o


main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o: main1/CMakeFiles/apriltags_demo.dir/flags.make
main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o: /home/anish/ws4/src/main1/Serial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anish/ws4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o"
	cd /home/anish/ws4/build/main1 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/apriltags_demo.dir/Serial.cpp.o -c /home/anish/ws4/src/main1/Serial.cpp

main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltags_demo.dir/Serial.cpp.i"
	cd /home/anish/ws4/build/main1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anish/ws4/src/main1/Serial.cpp > CMakeFiles/apriltags_demo.dir/Serial.cpp.i

main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltags_demo.dir/Serial.cpp.s"
	cd /home/anish/ws4/build/main1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anish/ws4/src/main1/Serial.cpp -o CMakeFiles/apriltags_demo.dir/Serial.cpp.s

main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.requires:

.PHONY : main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.requires

main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.provides: main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.requires
	$(MAKE) -f main1/CMakeFiles/apriltags_demo.dir/build.make main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.provides.build
.PHONY : main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.provides

main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.provides.build: main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o


# Object files for target apriltags_demo
apriltags_demo_OBJECTS = \
"CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o" \
"CMakeFiles/apriltags_demo.dir/Serial.cpp.o"

# External object files for target apriltags_demo
apriltags_demo_EXTERNAL_OBJECTS =

/home/anish/ws4/devel/lib/main1/apriltags_demo: main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o
/home/anish/ws4/devel/lib/main1/apriltags_demo: main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o
/home/anish/ws4/devel/lib/main1/apriltags_demo: main1/CMakeFiles/apriltags_demo.dir/build.make
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libcv_bridge.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_calib3d3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_core3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_features2d3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_flann3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_highgui3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_imgproc3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_ml3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_objdetect3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_photo3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_shape3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_stitching3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_superres3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_video3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_videoio3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_videostab3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_viz3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_aruco3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_bgsegm3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_bioinspired3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_ccalib3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_cvv3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_datasets3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_dpm3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_face3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_fuzzy3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_hdf3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_line_descriptor3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_optflow3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_phase_unwrapping3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_plot3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_reg3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_rgbd3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_saliency3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_stereo3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_structured_light3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_surface_matching3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_text3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_xfeatures2d3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_ximgproc3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_xobjdetect3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_xphoto3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libimage_transport.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libmavros.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libclass_loader.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/libPocoFoundation.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libdl.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libroslib.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/librospack.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libtf2_ros.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libactionlib.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libmessage_filters.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libtf2.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libmavconn.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libeigen_conversions.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/liborocos-kdl.so.1.3.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libroscpp.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/librosconsole.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/librostime.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libcpp_common.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_stitching3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_superres3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_videostab3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_aruco3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_bgsegm3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_bioinspired3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_ccalib3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_cvv3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_datasets3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_dpm3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_face3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_fuzzy3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_hdf3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_line_descriptor3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_optflow3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_plot3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_reg3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_saliency3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_stereo3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_structured_light3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_surface_matching3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_text3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_xfeatures2d3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_ximgproc3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_xobjdetect3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_xphoto3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libv4l2.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /usr/lib/x86_64-linux-gnu/libv4l1.so
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_shape3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_video3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_viz3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_phase_unwrapping3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_rgbd3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_calib3d3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_features2d3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_flann3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_objdetect3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_ml3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_highgui3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_photo3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_videoio3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_imgproc3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: /opt/ros/kinetic/lib/libopencv_core3.so.3.2.0
/home/anish/ws4/devel/lib/main1/apriltags_demo: main1/CMakeFiles/apriltags_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anish/ws4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/anish/ws4/devel/lib/main1/apriltags_demo"
	cd /home/anish/ws4/build/main1 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/apriltags_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
main1/CMakeFiles/apriltags_demo.dir/build: /home/anish/ws4/devel/lib/main1/apriltags_demo

.PHONY : main1/CMakeFiles/apriltags_demo.dir/build

main1/CMakeFiles/apriltags_demo.dir/requires: main1/CMakeFiles/apriltags_demo.dir/src/apriltags_demo.cpp.o.requires
main1/CMakeFiles/apriltags_demo.dir/requires: main1/CMakeFiles/apriltags_demo.dir/Serial.cpp.o.requires

.PHONY : main1/CMakeFiles/apriltags_demo.dir/requires

main1/CMakeFiles/apriltags_demo.dir/clean:
	cd /home/anish/ws4/build/main1 && $(CMAKE_COMMAND) -P CMakeFiles/apriltags_demo.dir/cmake_clean.cmake
.PHONY : main1/CMakeFiles/apriltags_demo.dir/clean

main1/CMakeFiles/apriltags_demo.dir/depend:
	cd /home/anish/ws4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anish/ws4/src /home/anish/ws4/src/main1 /home/anish/ws4/build /home/anish/ws4/build/main1 /home/anish/ws4/build/main1/CMakeFiles/apriltags_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : main1/CMakeFiles/apriltags_demo.dir/depend

