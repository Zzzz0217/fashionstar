# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/build

# Include any dependencies generated for this target.
include CMakeFiles/servo_key_control.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/servo_key_control.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/servo_key_control.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/servo_key_control.dir/flags.make

CMakeFiles/servo_key_control.dir/servo_key.cpp.o: CMakeFiles/servo_key_control.dir/flags.make
CMakeFiles/servo_key_control.dir/servo_key.cpp.o: ../servo_key.cpp
CMakeFiles/servo_key_control.dir/servo_key.cpp.o: CMakeFiles/servo_key_control.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/servo_key_control.dir/servo_key.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/servo_key_control.dir/servo_key.cpp.o -MF CMakeFiles/servo_key_control.dir/servo_key.cpp.o.d -o CMakeFiles/servo_key_control.dir/servo_key.cpp.o -c /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/servo_key.cpp

CMakeFiles/servo_key_control.dir/servo_key.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo_key_control.dir/servo_key.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/servo_key.cpp > CMakeFiles/servo_key_control.dir/servo_key.cpp.i

CMakeFiles/servo_key_control.dir/servo_key.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo_key_control.dir/servo_key.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/servo_key.cpp -o CMakeFiles/servo_key_control.dir/servo_key.cpp.s

CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.o: CMakeFiles/servo_key_control.dir/flags.make
CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.o: /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp
CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.o: CMakeFiles/servo_key_control.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.o -MF CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.o.d -o CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.o -c /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp

CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp > CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.i

CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp -o CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.s

CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.o: CMakeFiles/servo_key_control.dir/flags.make
CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.o: /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp
CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.o: CMakeFiles/servo_key_control.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.o -MF CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.o.d -o CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.o -c /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp

CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp > CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.i

CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp -o CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.s

# Object files for target servo_key_control
servo_key_control_OBJECTS = \
"CMakeFiles/servo_key_control.dir/servo_key.cpp.o" \
"CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.o" \
"CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.o"

# External object files for target servo_key_control
servo_key_control_EXTERNAL_OBJECTS =

servo_key_control: CMakeFiles/servo_key_control.dir/servo_key.cpp.o
servo_key_control: CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp.o
servo_key_control: CMakeFiles/servo_key_control.dir/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp.o
servo_key_control: CMakeFiles/servo_key_control.dir/build.make
servo_key_control: /usr/local/lib/libcserialport.so
servo_key_control: CMakeFiles/servo_key_control.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable servo_key_control"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/servo_key_control.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/servo_key_control.dir/build: servo_key_control
.PHONY : CMakeFiles/servo_key_control.dir/build

CMakeFiles/servo_key_control.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/servo_key_control.dir/cmake_clean.cmake
.PHONY : CMakeFiles/servo_key_control.dir/clean

CMakeFiles/servo_key_control.dir/depend:
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/build /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/build /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/example/servo_key_control/build/CMakeFiles/servo_key_control.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/servo_key_control.dir/depend

