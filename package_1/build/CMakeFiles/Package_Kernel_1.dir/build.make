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
CMAKE_SOURCE_DIR = /home/lqy/work/test_rdc/package_1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lqy/work/test_rdc/package_1/build

# Include any dependencies generated for this target.
include CMakeFiles/Package_Kernel_1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Package_Kernel_1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Package_Kernel_1.dir/flags.make

CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o: CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o.depend
CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o: CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o.Release.cmake
CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o: ../src/package_1_kernel.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lqy/work/test_rdc/package_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building NVCC (Device) object CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o"
	cd /home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/src && /usr/bin/cmake -E make_directory /home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/src/.
	cd /home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/src && /usr/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING=Release -D generated_file:STRING=/home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/src/./Package_Kernel_1_generated_package_1_kernel.cu.o -D generated_cubin_file:STRING=/home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/src/./Package_Kernel_1_generated_package_1_kernel.cu.o.cubin.txt -P /home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o.Release.cmake

CMakeFiles/Package_Kernel_1.dir/Package_Kernel_1_intermediate_link.o: CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lqy/work/test_rdc/package_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building NVCC intermediate link file CMakeFiles/Package_Kernel_1.dir/Package_Kernel_1_intermediate_link.o"
	/usr/local/cuda-11.4/bin/nvcc -gencode arch=compute_86,code=sm_86 -std=c++14 -m64 -ccbin /usr/bin/cc -dlink /home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/src/./Package_Kernel_1_generated_package_1_kernel.cu.o -o /home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/./Package_Kernel_1_intermediate_link.o -Xcompiler -fPIC

# Object files for target Package_Kernel_1
Package_Kernel_1_OBJECTS =

# External object files for target Package_Kernel_1
Package_Kernel_1_EXTERNAL_OBJECTS = \
"/home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o" \
"/home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/Package_Kernel_1_intermediate_link.o"

../lib/libPackage_Kernel_1.a: CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o
../lib/libPackage_Kernel_1.a: CMakeFiles/Package_Kernel_1.dir/Package_Kernel_1_intermediate_link.o
../lib/libPackage_Kernel_1.a: CMakeFiles/Package_Kernel_1.dir/build.make
../lib/libPackage_Kernel_1.a: CMakeFiles/Package_Kernel_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lqy/work/test_rdc/package_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../lib/libPackage_Kernel_1.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Package_Kernel_1.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Package_Kernel_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Package_Kernel_1.dir/build: ../lib/libPackage_Kernel_1.a

.PHONY : CMakeFiles/Package_Kernel_1.dir/build

CMakeFiles/Package_Kernel_1.dir/requires:

.PHONY : CMakeFiles/Package_Kernel_1.dir/requires

CMakeFiles/Package_Kernel_1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Package_Kernel_1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Package_Kernel_1.dir/clean

CMakeFiles/Package_Kernel_1.dir/depend: CMakeFiles/Package_Kernel_1.dir/src/Package_Kernel_1_generated_package_1_kernel.cu.o
CMakeFiles/Package_Kernel_1.dir/depend: CMakeFiles/Package_Kernel_1.dir/Package_Kernel_1_intermediate_link.o
	cd /home/lqy/work/test_rdc/package_1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lqy/work/test_rdc/package_1 /home/lqy/work/test_rdc/package_1 /home/lqy/work/test_rdc/package_1/build /home/lqy/work/test_rdc/package_1/build /home/lqy/work/test_rdc/package_1/build/CMakeFiles/Package_Kernel_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Package_Kernel_1.dir/depend

