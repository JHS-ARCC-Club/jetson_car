# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/nvidia/Desktop/jetson_car/drivers/carHWComTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/Desktop/jetson_car/drivers/carHWComTest

# Include any dependencies generated for this target.
include CMakeFiles/carHWComTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/carHWComTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/carHWComTest.dir/flags.make

CMakeFiles/carHWComTest.dir/main.cpp.o: CMakeFiles/carHWComTest.dir/flags.make
CMakeFiles/carHWComTest.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/Desktop/jetson_car/drivers/carHWComTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/carHWComTest.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/carHWComTest.dir/main.cpp.o -c /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/main.cpp

CMakeFiles/carHWComTest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/carHWComTest.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/main.cpp > CMakeFiles/carHWComTest.dir/main.cpp.i

CMakeFiles/carHWComTest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/carHWComTest.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/main.cpp -o CMakeFiles/carHWComTest.dir/main.cpp.s

CMakeFiles/carHWComTest.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/carHWComTest.dir/main.cpp.o.requires

CMakeFiles/carHWComTest.dir/main.cpp.o.provides: CMakeFiles/carHWComTest.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/carHWComTest.dir/build.make CMakeFiles/carHWComTest.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/carHWComTest.dir/main.cpp.o.provides

CMakeFiles/carHWComTest.dir/main.cpp.o.provides.build: CMakeFiles/carHWComTest.dir/main.cpp.o


CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o: CMakeFiles/carHWComTest.dir/flags.make
CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o: racecar_arduino_com.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/Desktop/jetson_car/drivers/carHWComTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o -c /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/racecar_arduino_com.cpp

CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/racecar_arduino_com.cpp > CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.i

CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/racecar_arduino_com.cpp -o CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.s

CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o.requires:

.PHONY : CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o.requires

CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o.provides: CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o.requires
	$(MAKE) -f CMakeFiles/carHWComTest.dir/build.make CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o.provides.build
.PHONY : CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o.provides

CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o.provides.build: CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o


CMakeFiles/carHWComTest.dir/serial.cpp.o: CMakeFiles/carHWComTest.dir/flags.make
CMakeFiles/carHWComTest.dir/serial.cpp.o: serial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/Desktop/jetson_car/drivers/carHWComTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/carHWComTest.dir/serial.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/carHWComTest.dir/serial.cpp.o -c /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/serial.cpp

CMakeFiles/carHWComTest.dir/serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/carHWComTest.dir/serial.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/serial.cpp > CMakeFiles/carHWComTest.dir/serial.cpp.i

CMakeFiles/carHWComTest.dir/serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/carHWComTest.dir/serial.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/serial.cpp -o CMakeFiles/carHWComTest.dir/serial.cpp.s

CMakeFiles/carHWComTest.dir/serial.cpp.o.requires:

.PHONY : CMakeFiles/carHWComTest.dir/serial.cpp.o.requires

CMakeFiles/carHWComTest.dir/serial.cpp.o.provides: CMakeFiles/carHWComTest.dir/serial.cpp.o.requires
	$(MAKE) -f CMakeFiles/carHWComTest.dir/build.make CMakeFiles/carHWComTest.dir/serial.cpp.o.provides.build
.PHONY : CMakeFiles/carHWComTest.dir/serial.cpp.o.provides

CMakeFiles/carHWComTest.dir/serial.cpp.o.provides.build: CMakeFiles/carHWComTest.dir/serial.cpp.o


CMakeFiles/carHWComTest.dir/unix.cpp.o: CMakeFiles/carHWComTest.dir/flags.make
CMakeFiles/carHWComTest.dir/unix.cpp.o: unix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/Desktop/jetson_car/drivers/carHWComTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/carHWComTest.dir/unix.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/carHWComTest.dir/unix.cpp.o -c /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/unix.cpp

CMakeFiles/carHWComTest.dir/unix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/carHWComTest.dir/unix.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/unix.cpp > CMakeFiles/carHWComTest.dir/unix.cpp.i

CMakeFiles/carHWComTest.dir/unix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/carHWComTest.dir/unix.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/unix.cpp -o CMakeFiles/carHWComTest.dir/unix.cpp.s

CMakeFiles/carHWComTest.dir/unix.cpp.o.requires:

.PHONY : CMakeFiles/carHWComTest.dir/unix.cpp.o.requires

CMakeFiles/carHWComTest.dir/unix.cpp.o.provides: CMakeFiles/carHWComTest.dir/unix.cpp.o.requires
	$(MAKE) -f CMakeFiles/carHWComTest.dir/build.make CMakeFiles/carHWComTest.dir/unix.cpp.o.provides.build
.PHONY : CMakeFiles/carHWComTest.dir/unix.cpp.o.provides

CMakeFiles/carHWComTest.dir/unix.cpp.o.provides.build: CMakeFiles/carHWComTest.dir/unix.cpp.o


# Object files for target carHWComTest
carHWComTest_OBJECTS = \
"CMakeFiles/carHWComTest.dir/main.cpp.o" \
"CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o" \
"CMakeFiles/carHWComTest.dir/serial.cpp.o" \
"CMakeFiles/carHWComTest.dir/unix.cpp.o"

# External object files for target carHWComTest
carHWComTest_EXTERNAL_OBJECTS =

carHWComTest: CMakeFiles/carHWComTest.dir/main.cpp.o
carHWComTest: CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o
carHWComTest: CMakeFiles/carHWComTest.dir/serial.cpp.o
carHWComTest: CMakeFiles/carHWComTest.dir/unix.cpp.o
carHWComTest: CMakeFiles/carHWComTest.dir/build.make
carHWComTest: CMakeFiles/carHWComTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/Desktop/jetson_car/drivers/carHWComTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable carHWComTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/carHWComTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/carHWComTest.dir/build: carHWComTest

.PHONY : CMakeFiles/carHWComTest.dir/build

CMakeFiles/carHWComTest.dir/requires: CMakeFiles/carHWComTest.dir/main.cpp.o.requires
CMakeFiles/carHWComTest.dir/requires: CMakeFiles/carHWComTest.dir/racecar_arduino_com.cpp.o.requires
CMakeFiles/carHWComTest.dir/requires: CMakeFiles/carHWComTest.dir/serial.cpp.o.requires
CMakeFiles/carHWComTest.dir/requires: CMakeFiles/carHWComTest.dir/unix.cpp.o.requires

.PHONY : CMakeFiles/carHWComTest.dir/requires

CMakeFiles/carHWComTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/carHWComTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/carHWComTest.dir/clean

CMakeFiles/carHWComTest.dir/depend:
	cd /home/nvidia/Desktop/jetson_car/drivers/carHWComTest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/Desktop/jetson_car/drivers/carHWComTest /home/nvidia/Desktop/jetson_car/drivers/carHWComTest /home/nvidia/Desktop/jetson_car/drivers/carHWComTest /home/nvidia/Desktop/jetson_car/drivers/carHWComTest /home/nvidia/Desktop/jetson_car/drivers/carHWComTest/CMakeFiles/carHWComTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/carHWComTest.dir/depend

