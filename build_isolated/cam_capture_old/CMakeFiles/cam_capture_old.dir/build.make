# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/x0221391/ws_arm/src/cam_capture_old

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/x0221391/ws_arm/build_isolated/cam_capture_old

# Include any dependencies generated for this target.
include CMakeFiles/cam_capture_old.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cam_capture_old.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cam_capture_old.dir/flags.make

CMakeFiles/cam_capture_old.dir/src/EncNull.c.o: CMakeFiles/cam_capture_old.dir/flags.make
CMakeFiles/cam_capture_old.dir/src/EncNull.c.o: /home/x0221391/ws_arm/src/cam_capture_old/src/EncNull.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/x0221391/ws_arm/build_isolated/cam_capture_old/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/cam_capture_old.dir/src/EncNull.c.o"
	/usr/bin/arm-linux-gnueabihf-gcc-4.6  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cam_capture_old.dir/src/EncNull.c.o   -c /home/x0221391/ws_arm/src/cam_capture_old/src/EncNull.c

CMakeFiles/cam_capture_old.dir/src/EncNull.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cam_capture_old.dir/src/EncNull.c.i"
	/usr/bin/arm-linux-gnueabihf-gcc-4.6  $(C_DEFINES) $(C_FLAGS) -E /home/x0221391/ws_arm/src/cam_capture_old/src/EncNull.c > CMakeFiles/cam_capture_old.dir/src/EncNull.c.i

CMakeFiles/cam_capture_old.dir/src/EncNull.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cam_capture_old.dir/src/EncNull.c.s"
	/usr/bin/arm-linux-gnueabihf-gcc-4.6  $(C_DEFINES) $(C_FLAGS) -S /home/x0221391/ws_arm/src/cam_capture_old/src/EncNull.c -o CMakeFiles/cam_capture_old.dir/src/EncNull.c.s

CMakeFiles/cam_capture_old.dir/src/EncNull.c.o.requires:
.PHONY : CMakeFiles/cam_capture_old.dir/src/EncNull.c.o.requires

CMakeFiles/cam_capture_old.dir/src/EncNull.c.o.provides: CMakeFiles/cam_capture_old.dir/src/EncNull.c.o.requires
	$(MAKE) -f CMakeFiles/cam_capture_old.dir/build.make CMakeFiles/cam_capture_old.dir/src/EncNull.c.o.provides.build
.PHONY : CMakeFiles/cam_capture_old.dir/src/EncNull.c.o.provides

CMakeFiles/cam_capture_old.dir/src/EncNull.c.o.provides.build: CMakeFiles/cam_capture_old.dir/src/EncNull.c.o

CMakeFiles/cam_capture_old.dir/src/main.c.o: CMakeFiles/cam_capture_old.dir/flags.make
CMakeFiles/cam_capture_old.dir/src/main.c.o: /home/x0221391/ws_arm/src/cam_capture_old/src/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/x0221391/ws_arm/build_isolated/cam_capture_old/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/cam_capture_old.dir/src/main.c.o"
	/usr/bin/arm-linux-gnueabihf-gcc-4.6  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cam_capture_old.dir/src/main.c.o   -c /home/x0221391/ws_arm/src/cam_capture_old/src/main.c

CMakeFiles/cam_capture_old.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cam_capture_old.dir/src/main.c.i"
	/usr/bin/arm-linux-gnueabihf-gcc-4.6  $(C_DEFINES) $(C_FLAGS) -E /home/x0221391/ws_arm/src/cam_capture_old/src/main.c > CMakeFiles/cam_capture_old.dir/src/main.c.i

CMakeFiles/cam_capture_old.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cam_capture_old.dir/src/main.c.s"
	/usr/bin/arm-linux-gnueabihf-gcc-4.6  $(C_DEFINES) $(C_FLAGS) -S /home/x0221391/ws_arm/src/cam_capture_old/src/main.c -o CMakeFiles/cam_capture_old.dir/src/main.c.s

CMakeFiles/cam_capture_old.dir/src/main.c.o.requires:
.PHONY : CMakeFiles/cam_capture_old.dir/src/main.c.o.requires

CMakeFiles/cam_capture_old.dir/src/main.c.o.provides: CMakeFiles/cam_capture_old.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/cam_capture_old.dir/build.make CMakeFiles/cam_capture_old.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/cam_capture_old.dir/src/main.c.o.provides

CMakeFiles/cam_capture_old.dir/src/main.c.o.provides.build: CMakeFiles/cam_capture_old.dir/src/main.c.o

CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o: CMakeFiles/cam_capture_old.dir/flags.make
CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o: /home/x0221391/ws_arm/src/cam_capture_old/src/cam_capture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/x0221391/ws_arm/build_isolated/cam_capture_old/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o"
	/usr/bin/arm-linux-gnueabihf-g++-4.6   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o -c /home/x0221391/ws_arm/src/cam_capture_old/src/cam_capture.cpp

CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.i"
	/usr/bin/arm-linux-gnueabihf-g++-4.6  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/x0221391/ws_arm/src/cam_capture_old/src/cam_capture.cpp > CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.i

CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.s"
	/usr/bin/arm-linux-gnueabihf-g++-4.6  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/x0221391/ws_arm/src/cam_capture_old/src/cam_capture.cpp -o CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.s

CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o.requires:
.PHONY : CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o.requires

CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o.provides: CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o.requires
	$(MAKE) -f CMakeFiles/cam_capture_old.dir/build.make CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o.provides.build
.PHONY : CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o.provides

CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o.provides.build: CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o

# Object files for target cam_capture_old
cam_capture_old_OBJECTS = \
"CMakeFiles/cam_capture_old.dir/src/EncNull.c.o" \
"CMakeFiles/cam_capture_old.dir/src/main.c.o" \
"CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o"

# External object files for target cam_capture_old
cam_capture_old_EXTERNAL_OBJECTS =

/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: CMakeFiles/cam_capture_old.dir/src/EncNull.c.o
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: CMakeFiles/cam_capture_old.dir/src/main.c.o
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: CMakeFiles/cam_capture_old.dir/build.make
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /user/x0221391/Documents/vision_sdk_live/VISION_SDK_02_03_00_00/vision_sdk/binaries/lib/a15/debug/vision_sdk_linux_demo.a
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /user/x0221391/Documents/vision_sdk_live/VISION_SDK_02_03_00_00/vision_sdk/binaries/lib/a15/debug/vision_sdk_linux_lib.a
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/ros/hydro/lib/libroscpp.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/../lib/libboost_signals-mt.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/../lib/libboost_filesystem-mt.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/ros/hydro/lib/librosconsole.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/ros/hydro/lib/librosconsole_log4cxx.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/ros/hydro/lib/librosconsole_backend_interface.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/../lib/liblog4cxx.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/../lib/libboost_regex-mt.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/ros/hydro/lib/libxmlrpcpp.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/ros/hydro/lib/libroscpp_serialization.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/ros/hydro/lib/librostime.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/../lib/libboost_date_time-mt.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/../lib/libboost_system-mt.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/../lib/libboost_thread-mt.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/lib/libpthread.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: /home/x0221391/cardimage_copy/rootfs/usr/share/ros/hydro/lib/libcpp_common.so
/home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old: CMakeFiles/cam_capture_old.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cam_capture_old.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cam_capture_old.dir/build: /home/x0221391/ws_arm/devel_isolated/cam_capture_old/lib/cam_capture_old/cam_capture_old
.PHONY : CMakeFiles/cam_capture_old.dir/build

CMakeFiles/cam_capture_old.dir/requires: CMakeFiles/cam_capture_old.dir/src/EncNull.c.o.requires
CMakeFiles/cam_capture_old.dir/requires: CMakeFiles/cam_capture_old.dir/src/main.c.o.requires
CMakeFiles/cam_capture_old.dir/requires: CMakeFiles/cam_capture_old.dir/src/cam_capture.cpp.o.requires
.PHONY : CMakeFiles/cam_capture_old.dir/requires

CMakeFiles/cam_capture_old.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cam_capture_old.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cam_capture_old.dir/clean

CMakeFiles/cam_capture_old.dir/depend:
	cd /home/x0221391/ws_arm/build_isolated/cam_capture_old && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/x0221391/ws_arm/src/cam_capture_old /home/x0221391/ws_arm/src/cam_capture_old /home/x0221391/ws_arm/build_isolated/cam_capture_old /home/x0221391/ws_arm/build_isolated/cam_capture_old /home/x0221391/ws_arm/build_isolated/cam_capture_old/CMakeFiles/cam_capture_old.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cam_capture_old.dir/depend

