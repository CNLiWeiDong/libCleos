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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lwd/work/eos/libcleos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lwd/work/eos/libcleos/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/libcleos.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libcleos.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libcleos.dir/flags.make

CMakeFiles/libcleos.dir/httpc.cpp.o: CMakeFiles/libcleos.dir/flags.make
CMakeFiles/libcleos.dir/httpc.cpp.o: ../httpc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lwd/work/eos/libcleos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libcleos.dir/httpc.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libcleos.dir/httpc.cpp.o -c /Users/lwd/work/eos/libcleos/httpc.cpp

CMakeFiles/libcleos.dir/httpc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libcleos.dir/httpc.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lwd/work/eos/libcleos/httpc.cpp > CMakeFiles/libcleos.dir/httpc.cpp.i

CMakeFiles/libcleos.dir/httpc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libcleos.dir/httpc.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lwd/work/eos/libcleos/httpc.cpp -o CMakeFiles/libcleos.dir/httpc.cpp.s

CMakeFiles/libcleos.dir/httpc.cpp.o.requires:

.PHONY : CMakeFiles/libcleos.dir/httpc.cpp.o.requires

CMakeFiles/libcleos.dir/httpc.cpp.o.provides: CMakeFiles/libcleos.dir/httpc.cpp.o.requires
	$(MAKE) -f CMakeFiles/libcleos.dir/build.make CMakeFiles/libcleos.dir/httpc.cpp.o.provides.build
.PHONY : CMakeFiles/libcleos.dir/httpc.cpp.o.provides

CMakeFiles/libcleos.dir/httpc.cpp.o.provides.build: CMakeFiles/libcleos.dir/httpc.cpp.o


CMakeFiles/libcleos.dir/library.cpp.o: CMakeFiles/libcleos.dir/flags.make
CMakeFiles/libcleos.dir/library.cpp.o: ../library.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lwd/work/eos/libcleos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/libcleos.dir/library.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libcleos.dir/library.cpp.o -c /Users/lwd/work/eos/libcleos/library.cpp

CMakeFiles/libcleos.dir/library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libcleos.dir/library.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lwd/work/eos/libcleos/library.cpp > CMakeFiles/libcleos.dir/library.cpp.i

CMakeFiles/libcleos.dir/library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libcleos.dir/library.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lwd/work/eos/libcleos/library.cpp -o CMakeFiles/libcleos.dir/library.cpp.s

CMakeFiles/libcleos.dir/library.cpp.o.requires:

.PHONY : CMakeFiles/libcleos.dir/library.cpp.o.requires

CMakeFiles/libcleos.dir/library.cpp.o.provides: CMakeFiles/libcleos.dir/library.cpp.o.requires
	$(MAKE) -f CMakeFiles/libcleos.dir/build.make CMakeFiles/libcleos.dir/library.cpp.o.provides.build
.PHONY : CMakeFiles/libcleos.dir/library.cpp.o.provides

CMakeFiles/libcleos.dir/library.cpp.o.provides.build: CMakeFiles/libcleos.dir/library.cpp.o


# Object files for target libcleos
libcleos_OBJECTS = \
"CMakeFiles/libcleos.dir/httpc.cpp.o" \
"CMakeFiles/libcleos.dir/library.cpp.o"

# External object files for target libcleos
libcleos_EXTERNAL_OBJECTS =

liblibcleos.a: CMakeFiles/libcleos.dir/httpc.cpp.o
liblibcleos.a: CMakeFiles/libcleos.dir/library.cpp.o
liblibcleos.a: CMakeFiles/libcleos.dir/build.make
liblibcleos.a: CMakeFiles/libcleos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lwd/work/eos/libcleos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library liblibcleos.a"
	$(CMAKE_COMMAND) -P CMakeFiles/libcleos.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libcleos.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libcleos.dir/build: liblibcleos.a

.PHONY : CMakeFiles/libcleos.dir/build

CMakeFiles/libcleos.dir/requires: CMakeFiles/libcleos.dir/httpc.cpp.o.requires
CMakeFiles/libcleos.dir/requires: CMakeFiles/libcleos.dir/library.cpp.o.requires

.PHONY : CMakeFiles/libcleos.dir/requires

CMakeFiles/libcleos.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libcleos.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libcleos.dir/clean

CMakeFiles/libcleos.dir/depend:
	cd /Users/lwd/work/eos/libcleos/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lwd/work/eos/libcleos /Users/lwd/work/eos/libcleos /Users/lwd/work/eos/libcleos/cmake-build-debug /Users/lwd/work/eos/libcleos/cmake-build-debug /Users/lwd/work/eos/libcleos/cmake-build-debug/CMakeFiles/libcleos.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libcleos.dir/depend

