# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lqy/work/test_rdc/main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lqy/work/test_rdc/main/build

# Include any dependencies generated for this target.
include CMakeFiles/test_rdc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_rdc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_rdc.dir/flags.make

CMakeFiles/test_rdc.dir/main.cpp.o: CMakeFiles/test_rdc.dir/flags.make
CMakeFiles/test_rdc.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lqy/work/test_rdc/main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_rdc.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_rdc.dir/main.cpp.o -c /home/lqy/work/test_rdc/main/main.cpp

CMakeFiles/test_rdc.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_rdc.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lqy/work/test_rdc/main/main.cpp > CMakeFiles/test_rdc.dir/main.cpp.i

CMakeFiles/test_rdc.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_rdc.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lqy/work/test_rdc/main/main.cpp -o CMakeFiles/test_rdc.dir/main.cpp.s

CMakeFiles/test_rdc.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/test_rdc.dir/main.cpp.o.requires

CMakeFiles/test_rdc.dir/main.cpp.o.provides: CMakeFiles/test_rdc.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_rdc.dir/build.make CMakeFiles/test_rdc.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/test_rdc.dir/main.cpp.o.provides

CMakeFiles/test_rdc.dir/main.cpp.o.provides.build: CMakeFiles/test_rdc.dir/main.cpp.o


# Object files for target test_rdc
test_rdc_OBJECTS = \
"CMakeFiles/test_rdc.dir/main.cpp.o"

# External object files for target test_rdc
test_rdc_EXTERNAL_OBJECTS =

test_rdc: CMakeFiles/test_rdc.dir/main.cpp.o
test_rdc: CMakeFiles/test_rdc.dir/build.make
test_rdc: /home/lqy/work/test_rdc/package_1/lib/libpackage_1.so
test_rdc: /home/lqy/work/test_rdc/package_2/lib/libpackage_2.so
test_rdc: /usr/local/cuda-11.4/lib64/libcudart_static.a
test_rdc: /usr/lib/x86_64-linux-gnu/librt.so
test_rdc: CMakeFiles/test_rdc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lqy/work/test_rdc/main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_rdc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_rdc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_rdc.dir/build: test_rdc

.PHONY : CMakeFiles/test_rdc.dir/build

CMakeFiles/test_rdc.dir/requires: CMakeFiles/test_rdc.dir/main.cpp.o.requires

.PHONY : CMakeFiles/test_rdc.dir/requires

CMakeFiles/test_rdc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_rdc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_rdc.dir/clean

CMakeFiles/test_rdc.dir/depend:
	cd /home/lqy/work/test_rdc/main/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lqy/work/test_rdc/main /home/lqy/work/test_rdc/main /home/lqy/work/test_rdc/main/build /home/lqy/work/test_rdc/main/build /home/lqy/work/test_rdc/main/build/CMakeFiles/test_rdc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_rdc.dir/depend

