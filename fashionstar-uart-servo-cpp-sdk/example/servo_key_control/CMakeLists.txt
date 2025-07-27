# CMake 配置文件
# 键盘控制舵机示例
cmake_minimum_required(VERSION 3.10)
project(servo_key_control)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 添加可执行文件
add_executable(servo_key_control
    servo_key.cpp
    ${CMAKE_SOURCE_DIR}/../../src/FashionStar_UartServo.cpp
    ${CMAKE_SOURCE_DIR}/../../src/FashionStar_UartServoProtocol.cpp
)

# 包含头文件路径
include_directories(
    ${CMAKE_SOURCE_DIR}/../include
    ${CMAKE_SOURCE_DIR}/../../include
)

# 链接库
find_library(CSerialPort_LIB cserialport)
if (NOT CSerialPort_LIB)
    message(FATAL_ERROR "CSerialPort library not found")
endif()

target_link_libraries(servo_key_control
    ${CSerialPort_LIB}
)