# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /root/workspace/dcmtk_work/lndbconnect

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/workspace/dcmtk_work/lndbconnect

# Include any dependencies generated for this target.
include lnconfig/CMakeFiles/ln_config.dir/depend.make

# Include the progress variables for this target.
include lnconfig/CMakeFiles/ln_config.dir/progress.make

# Include the compile flags for this target's objects.
include lnconfig/CMakeFiles/ln_config.dir/flags.make

lnconfig/CMakeFiles/ln_config.dir/src/lnconfig.cpp.o: lnconfig/CMakeFiles/ln_config.dir/flags.make
lnconfig/CMakeFiles/ln_config.dir/src/lnconfig.cpp.o: lnconfig/src/lnconfig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/dcmtk_work/lndbconnect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lnconfig/CMakeFiles/ln_config.dir/src/lnconfig.cpp.o"
	cd /root/workspace/dcmtk_work/lndbconnect/lnconfig && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ln_config.dir/src/lnconfig.cpp.o -c /root/workspace/dcmtk_work/lndbconnect/lnconfig/src/lnconfig.cpp

lnconfig/CMakeFiles/ln_config.dir/src/lnconfig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ln_config.dir/src/lnconfig.cpp.i"
	cd /root/workspace/dcmtk_work/lndbconnect/lnconfig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/dcmtk_work/lndbconnect/lnconfig/src/lnconfig.cpp > CMakeFiles/ln_config.dir/src/lnconfig.cpp.i

lnconfig/CMakeFiles/ln_config.dir/src/lnconfig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ln_config.dir/src/lnconfig.cpp.s"
	cd /root/workspace/dcmtk_work/lndbconnect/lnconfig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/dcmtk_work/lndbconnect/lnconfig/src/lnconfig.cpp -o CMakeFiles/ln_config.dir/src/lnconfig.cpp.s

# Object files for target ln_config
ln_config_OBJECTS = \
"CMakeFiles/ln_config.dir/src/lnconfig.cpp.o"

# External object files for target ln_config
ln_config_EXTERNAL_OBJECTS =

lnconfig/libln_config.so: lnconfig/CMakeFiles/ln_config.dir/src/lnconfig.cpp.o
lnconfig/libln_config.so: lnconfig/CMakeFiles/ln_config.dir/build.make
lnconfig/libln_config.so: lnconfig/CMakeFiles/ln_config.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/workspace/dcmtk_work/lndbconnect/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libln_config.so"
	cd /root/workspace/dcmtk_work/lndbconnect/lnconfig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ln_config.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lnconfig/CMakeFiles/ln_config.dir/build: lnconfig/libln_config.so

.PHONY : lnconfig/CMakeFiles/ln_config.dir/build

lnconfig/CMakeFiles/ln_config.dir/clean:
	cd /root/workspace/dcmtk_work/lndbconnect/lnconfig && $(CMAKE_COMMAND) -P CMakeFiles/ln_config.dir/cmake_clean.cmake
.PHONY : lnconfig/CMakeFiles/ln_config.dir/clean

lnconfig/CMakeFiles/ln_config.dir/depend:
	cd /root/workspace/dcmtk_work/lndbconnect && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/workspace/dcmtk_work/lndbconnect /root/workspace/dcmtk_work/lndbconnect/lnconfig /root/workspace/dcmtk_work/lndbconnect /root/workspace/dcmtk_work/lndbconnect/lnconfig /root/workspace/dcmtk_work/lndbconnect/lnconfig/CMakeFiles/ln_config.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lnconfig/CMakeFiles/ln_config.dir/depend

