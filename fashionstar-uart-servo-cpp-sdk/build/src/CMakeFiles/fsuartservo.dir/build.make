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
CMAKE_SOURCE_DIR = /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build

# Include any dependencies generated for this target.
include src/CMakeFiles/fsuartservo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/fsuartservo.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/fsuartservo.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/fsuartservo.dir/flags.make

src/CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.o: src/CMakeFiles/fsuartservo.dir/flags.make
src/CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.o: ../src/FashionStar_UartServoProtocol.cpp
src/CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.o: src/CMakeFiles/fsuartservo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.o"
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.o -MF CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.o.d -o CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.o -c /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp

src/CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.i"
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp > CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.i

src/CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.s"
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServoProtocol.cpp -o CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.s

src/CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.o: src/CMakeFiles/fsuartservo.dir/flags.make
src/CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.o: ../src/FashionStar_UartServo.cpp
src/CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.o: src/CMakeFiles/fsuartservo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.o"
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.o -MF CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.o.d -o CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.o -c /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp

src/CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.i"
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp > CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.i

src/CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.s"
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src/FashionStar_UartServo.cpp -o CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.s

# Object files for target fsuartservo
fsuartservo_OBJECTS = \
"CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.o" \
"CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.o"

# External object files for target fsuartservo
fsuartservo_EXTERNAL_OBJECTS =

lib/libfsuartservo.so: src/CMakeFiles/fsuartservo.dir/FashionStar_UartServoProtocol.cpp.o
lib/libfsuartservo.so: src/CMakeFiles/fsuartservo.dir/FashionStar_UartServo.cpp.o
lib/libfsuartservo.so: src/CMakeFiles/fsuartservo.dir/build.make
lib/libfsuartservo.so: src/CMakeFiles/fsuartservo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../lib/libfsuartservo.so"
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fsuartservo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/fsuartservo.dir/build: lib/libfsuartservo.so
.PHONY : src/CMakeFiles/fsuartservo.dir/build

src/CMakeFiles/fsuartservo.dir/clean:
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src && $(CMAKE_COMMAND) -P CMakeFiles/fsuartservo.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/fsuartservo.dir/clean

src/CMakeFiles/fsuartservo.dir/depend:
	cd /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/src /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src /home/zy/fashionstar/fashionstar-uart-servo-cpp-sdk/build/src/CMakeFiles/fsuartservo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/fsuartservo.dir/depend

