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
CMAKE_SOURCE_DIR = /home/x0221391/ws_arm/src/cam_capture

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/x0221391/ws_arm/build_isolated/cam_capture

# Include any dependencies generated for this target.
include CMakeFiles/Enc_Null.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Enc_Null.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Enc_Null.dir/flags.make

CMakeFiles/Enc_Null.dir/src/EncNull.c.o: CMakeFiles/Enc_Null.dir/flags.make
CMakeFiles/Enc_Null.dir/src/EncNull.c.o: /home/x0221391/ws_arm/src/cam_capture/src/EncNull.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/x0221391/ws_arm/build_isolated/cam_capture/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/Enc_Null.dir/src/EncNull.c.o"
	/usr/bin/arm-linux-gnueabihf-gcc-4.6  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Enc_Null.dir/src/EncNull.c.o   -c /home/x0221391/ws_arm/src/cam_capture/src/EncNull.c

CMakeFiles/Enc_Null.dir/src/EncNull.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Enc_Null.dir/src/EncNull.c.i"
	/usr/bin/arm-linux-gnueabihf-gcc-4.6  $(C_DEFINES) $(C_FLAGS) -E /home/x0221391/ws_arm/src/cam_capture/src/EncNull.c > CMakeFiles/Enc_Null.dir/src/EncNull.c.i

CMakeFiles/Enc_Null.dir/src/EncNull.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Enc_Null.dir/src/EncNull.c.s"
	/usr/bin/arm-linux-gnueabihf-gcc-4.6  $(C_DEFINES) $(C_FLAGS) -S /home/x0221391/ws_arm/src/cam_capture/src/EncNull.c -o CMakeFiles/Enc_Null.dir/src/EncNull.c.s

CMakeFiles/Enc_Null.dir/src/EncNull.c.o.requires:
.PHONY : CMakeFiles/Enc_Null.dir/src/EncNull.c.o.requires

CMakeFiles/Enc_Null.dir/src/EncNull.c.o.provides: CMakeFiles/Enc_Null.dir/src/EncNull.c.o.requires
	$(MAKE) -f CMakeFiles/Enc_Null.dir/build.make CMakeFiles/Enc_Null.dir/src/EncNull.c.o.provides.build
.PHONY : CMakeFiles/Enc_Null.dir/src/EncNull.c.o.provides

CMakeFiles/Enc_Null.dir/src/EncNull.c.o.provides.build: CMakeFiles/Enc_Null.dir/src/EncNull.c.o

# Object files for target Enc_Null
Enc_Null_OBJECTS = \
"CMakeFiles/Enc_Null.dir/src/EncNull.c.o"

# External object files for target Enc_Null
Enc_Null_EXTERNAL_OBJECTS =

/home/x0221391/ws_arm/devel_isolated/cam_capture/lib/libEnc_Null.so: CMakeFiles/Enc_Null.dir/src/EncNull.c.o
/home/x0221391/ws_arm/devel_isolated/cam_capture/lib/libEnc_Null.so: CMakeFiles/Enc_Null.dir/build.make
/home/x0221391/ws_arm/devel_isolated/cam_capture/lib/libEnc_Null.so: CMakeFiles/Enc_Null.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library /home/x0221391/ws_arm/devel_isolated/cam_capture/lib/libEnc_Null.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Enc_Null.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Enc_Null.dir/build: /home/x0221391/ws_arm/devel_isolated/cam_capture/lib/libEnc_Null.so
.PHONY : CMakeFiles/Enc_Null.dir/build

CMakeFiles/Enc_Null.dir/requires: CMakeFiles/Enc_Null.dir/src/EncNull.c.o.requires
.PHONY : CMakeFiles/Enc_Null.dir/requires

CMakeFiles/Enc_Null.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Enc_Null.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Enc_Null.dir/clean

CMakeFiles/Enc_Null.dir/depend:
	cd /home/x0221391/ws_arm/build_isolated/cam_capture && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/x0221391/ws_arm/src/cam_capture /home/x0221391/ws_arm/src/cam_capture /home/x0221391/ws_arm/build_isolated/cam_capture /home/x0221391/ws_arm/build_isolated/cam_capture /home/x0221391/ws_arm/build_isolated/cam_capture/CMakeFiles/Enc_Null.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Enc_Null.dir/depend

