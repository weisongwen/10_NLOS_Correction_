# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/wenws/10_NLOS_Correction_/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wenws/10_NLOS_Correction_/build

# Include any dependencies generated for this target.
include vector_map/CMakeFiles/vector_map.dir/depend.make

# Include the progress variables for this target.
include vector_map/CMakeFiles/vector_map.dir/progress.make

# Include the compile flags for this target's objects.
include vector_map/CMakeFiles/vector_map.dir/flags.make

vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o: vector_map/CMakeFiles/vector_map.dir/flags.make
vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o: /home/wenws/10_NLOS_Correction_/src/vector_map/lib/vector_map/vector_map.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/wenws/10_NLOS_Correction_/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o"
	cd /home/wenws/10_NLOS_Correction_/build/vector_map && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o -c /home/wenws/10_NLOS_Correction_/src/vector_map/lib/vector_map/vector_map.cpp

vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.i"
	cd /home/wenws/10_NLOS_Correction_/build/vector_map && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/wenws/10_NLOS_Correction_/src/vector_map/lib/vector_map/vector_map.cpp > CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.i

vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.s"
	cd /home/wenws/10_NLOS_Correction_/build/vector_map && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/wenws/10_NLOS_Correction_/src/vector_map/lib/vector_map/vector_map.cpp -o CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.s

vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o.requires:
.PHONY : vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o.requires

vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o.provides: vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o.requires
	$(MAKE) -f vector_map/CMakeFiles/vector_map.dir/build.make vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o.provides.build
.PHONY : vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o.provides

vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o.provides.build: vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o

# Object files for target vector_map
vector_map_OBJECTS = \
"CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o"

# External object files for target vector_map
vector_map_EXTERNAL_OBJECTS =

/home/wenws/10_NLOS_Correction_/devel/lib/libvector_map.so: vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o
/home/wenws/10_NLOS_Correction_/devel/lib/libvector_map.so: vector_map/CMakeFiles/vector_map.dir/build.make
/home/wenws/10_NLOS_Correction_/devel/lib/libvector_map.so: vector_map/CMakeFiles/vector_map.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/wenws/10_NLOS_Correction_/devel/lib/libvector_map.so"
	cd /home/wenws/10_NLOS_Correction_/build/vector_map && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vector_map.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vector_map/CMakeFiles/vector_map.dir/build: /home/wenws/10_NLOS_Correction_/devel/lib/libvector_map.so
.PHONY : vector_map/CMakeFiles/vector_map.dir/build

vector_map/CMakeFiles/vector_map.dir/requires: vector_map/CMakeFiles/vector_map.dir/lib/vector_map/vector_map.cpp.o.requires
.PHONY : vector_map/CMakeFiles/vector_map.dir/requires

vector_map/CMakeFiles/vector_map.dir/clean:
	cd /home/wenws/10_NLOS_Correction_/build/vector_map && $(CMAKE_COMMAND) -P CMakeFiles/vector_map.dir/cmake_clean.cmake
.PHONY : vector_map/CMakeFiles/vector_map.dir/clean

vector_map/CMakeFiles/vector_map.dir/depend:
	cd /home/wenws/10_NLOS_Correction_/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wenws/10_NLOS_Correction_/src /home/wenws/10_NLOS_Correction_/src/vector_map /home/wenws/10_NLOS_Correction_/build /home/wenws/10_NLOS_Correction_/build/vector_map /home/wenws/10_NLOS_Correction_/build/vector_map/CMakeFiles/vector_map.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vector_map/CMakeFiles/vector_map.dir/depend

