/*
 * 键盘异步控制双舵机转动示例
 * 第一个舵机 (ID: 0) 控制：
 * 按下 a/d 控制舵机逆时针/顺时针转动
 * 按下 w/s 控制舵机转速增减
 * 第二个舵机 (ID: 1) 控制：
 * 按下 方向键左/右 控制舵机逆时针/顺时针转动
 * 按下 方向键上/下 控制舵机转速增减
 * --------------------------
 * 作者: 深圳市华馨京科技有限公司
 * 网站：https://fashionrobo.com/
 */
#include <iostream>
#include <termios.h>
#include <unistd.h>
#include "CSerialPort/SerialPort.h"
#include "FashionStar_UartServoProtocol.h"
#include "FashionStar_UartServo.h"

using namespace fsuservo;

// 获取键盘输入（非阻塞）
int getch() {
    struct termios oldt, newt;
    int ch;
    tcgetattr(STDIN_FILENO, &oldt);
    newt = oldt;
    newt.c_lflag &= ~(ICANON | ECHO);
    tcsetattr(STDIN_FILENO, TCSANOW, &newt);
    ch = getchar();
    tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
    return ch;
}

int main() {
    // 串口配置
    #ifdef _WIN32
    #define SERVO_PORT_NAME "COM8"
    #else
    #define SERVO_PORT_NAME "/dev/ttyUSB0"
    #endif

    // 默认加速/减速时间和功率参数
    FSUS_INTERVAL_T t_acc = 100;
    FSUS_INTERVAL_T t_dec = 100;
    FSUS_POWER_T power = 400;

    // 初始化串口协议
    FSUS_Protocol protocol(SERVO_PORT_NAME, FSUS_DEFAULT_BAUDRATE);

    // 初始化两个舵机，使用不同的ID
    FSUS_Servo servo0(0, &protocol); // 第一个舵机 ID: 0
    FSUS_Servo servo1(1, &protocol); // 第二个舵机 ID: 1

    servo0.init();
    servo1.init();

    // 检查舵机连接状态
    std::cout << "检查舵机连接状态..." << std::endl;
    bool servo0_online = servo0.ping();
    bool servo1_online = servo1.ping();

    std::cout << "舵机 ID 0: " << (servo0_online ? "在线" : "离线") << std::endl;
    std::cout << "舵机 ID 1: " << (servo1_online ? "在线" : "离线") << std::endl;

    if (!servo0_online && !servo1_online) {
        std::cout << "警告：没有检测到舵机，请检查连接！" << std::endl;
    }

    // 先尝试不使用异步模式，使用传统同步控制
    std::cout << "使用同步控制模式" << std::endl;

    // 延时确保初始化完成
    protocol.delay_ms(200);

    // 为舵机设置初始位置以确保它们能正常响应
    if (servo0_online) {
        servo0.setRawAngle(0.0); // 设置舵机0到初始位置
        std::cout << "舵机 ID 0 已设置到初始位置" << std::endl;
    }
    if (servo1_online) {
        servo1.setRawAngle(0.0); // 设置舵机1到初始位置
        std::cout << "舵机 ID 1 已设置到初始位置" << std::endl;
        protocol.delay_ms(500); // 等待舵机1移动到位
    }

    float angle0 = 0.0; // 第一个舵机当前角度 (ID: 0)
    float speed0 = 100.0; // 第一个舵机初始转速
    float angle1 = 0.0; // 第二个舵机当前角度 (ID: 1)
    float speed1 = 100.0; // 第二个舵机初始转速
    float angleStep = 10.0; // 角度步长
    float speedStep = 20.0; // 转速步长

    std::cout << "\n======== 异步双舵机键盘控制 ========" << std::endl;
    std::cout << "舵机 ID 0 控制键：" << std::endl;
    std::cout << "  A/D - 逆时针/顺时针转动" << std::endl;
    std::cout << "  W/S - 转速增加/减少" << std::endl;
    std::cout << "舵机 ID 1 控制键：" << std::endl;
    std::cout << "  J/L - 逆时针/顺时针转动" << std::endl;
    std::cout << "  I/K - 转速增加/减少" << std::endl;
    std::cout << "  Q - 退出程序" << std::endl;
    std::cout << "===================================\n" << std::endl;

    while (true) {
        int key = getch();
        switch (key) {
            case 'a':
            case 'A': // 舵机 ID 0 逆时针转动
                if (servo0_online) {
                    angle0 -= angleStep;
                    if (angle0 < -180.0) {
                        angle0 = -180.0;
                        std::cout << "舵机 ID 0: 角度超出限制, 已调至边界" << std::endl;
                    }
                    servo0.setRawAngleByVelocity(angle0, speed0, t_acc, t_dec, power);
                    std::cout << "舵机 ID 0 逆时针转动，角度: " << angle0 << "° 转速: " << speed0 << "°/s" << std::endl;
                } else {
                    std::cout << "舵机 ID 0 离线，无法控制" << std::endl;
                }
                break;
            case 'd':
            case 'D': // 舵机 ID 0 顺时针转动
                if (servo0_online) {
                    angle0 += angleStep;
                    if (angle0 > 180.0) {
                        angle0 = 180.0;
                        std::cout << "舵机 ID 0: 角度超出限制, 已调至边界" << std::endl;
                    }
                    servo0.setRawAngleByVelocity(angle0, speed0, t_acc, t_dec, power);
                    std::cout << "舵机 ID 0 顺时针转动，角度: " << angle0 << "° 转速: " << speed0 << "°/s" << std::endl;
                } else {
                    std::cout << "舵机 ID 0 离线，无法控制" << std::endl;
                }
                break;
            case 'w':
            case 'W': // 舵机 ID 0 增加转速
                speed0 += speedStep;
                if (speed0 > 300.0) speed0 = 300.0; // 限制最大速度
                std::cout << "舵机 ID 0 转速增加: " << speed0 << "°/s" << std::endl;
                break;
            case 's':
            case 'S': // 舵机 ID 0 减少转速
                speed0 -= speedStep;
                if (speed0 < 10.0) speed0 = 10.0; // 限制最小速度
                std::cout << "舵机 ID 0 转速减少: " << speed0 << "°/s" << std::endl;
                break;
            case 'i':
            case 'I': // 舵机 ID 1 增加转速
                speed1 += speedStep;
                if (speed1 > 300.0) speed1 = 300.0; // 限制最大速度
                std::cout << "舵机 ID 1 转速增加: " << speed1 << "°/s" << std::endl;
                break;
            case 'k':
            case 'K': // 舵机 ID 1 减少转速
                speed1 -= speedStep;
                if (speed1 < 10.0) speed1 = 10.0; // 限制最小速度
                std::cout << "舵机 ID 1 转速减少: " << speed1 << "°/s" << std::endl;
                break;
            case 'l':
            case 'L': // 舵机 ID 1 顺时针转动
                std::cout << "尝试控制舵机 ID 1..." << std::endl;
                // 添加通信延时避免冲突
                protocol.delay_ms(100);
                // 重新检查舵机1的在线状态
                servo1_online = servo1.ping();
                std::cout << "舵机 ID 1 ping结果: " << (servo1_online ? "在线" : "离线") << std::endl;
                if (servo1_online) {
                    angle1 += angleStep;
                    if (angle1 > 180.0) {
                        angle1 = 180.0;
                        std::cout << "舵机 ID 1: 角度超出限制, 已调至边界" << std::endl;
                    }
                    std::cout << "正在发送命令给舵机 ID 1..." << std::endl;
                    servo1.setRawAngleByVelocity(angle1, speed1, t_acc, t_dec, power);
                    std::cout << "舵机 ID 1 顺时针转动，角度: " << angle1 << "° 转速: " << speed1 << "°/s" << std::endl;
                    // 添加小延时确保命令发送
                    protocol.delay_ms(100);
                } else {
                    std::cout << "舵机 ID 1 离线，尝试重新初始化..." << std::endl;
                    servo1.init();
                    protocol.delay_ms(200);
                    servo1_online = servo1.ping();
                    if (servo1_online) {
                        std::cout << "舵机 ID 1 重新初始化成功" << std::endl;
                    } else {
                        std::cout << "舵机 ID 1 重新初始化失败，请检查连接" << std::endl;
                    }
                }
                break;
            case 'j':
            case 'J': // 舵机 ID 1 逆时针转动
                std::cout << "尝试控制舵机 ID 1..." << std::endl;
                // 添加通信延时避免冲突
                protocol.delay_ms(100);
                // 重新检查舵机1的在线状态
                servo1_online = servo1.ping();
                std::cout << "舵机 ID 1 ping结果: " << (servo1_online ? "在线" : "离线") << std::endl;
                if (servo1_online) {
                    angle1 -= angleStep;
                    if (angle1 < -180.0) {
                        angle1 = -180.0;
                        std::cout << "舵机 ID 1: 角度超出限制, 已调至边界" << std::endl;
                    }
                    std::cout << "正在发送命令给舵机 ID 1..." << std::endl;
                    servo1.setRawAngleByVelocity(angle1, speed1, t_acc, t_dec, power);
                    std::cout << "舵机 ID 1 逆时针转动，角度: " << angle1 << "° 转速: " << speed1 << "°/s" << std::endl;
                    // 添加小延时确保命令发送
                    protocol.delay_ms(100);
                } else {
                    std::cout << "舵机 ID 1 离线，尝试重新初始化..." << std::endl;
                    servo1.init();
                    protocol.delay_ms(200);
                    servo1_online = servo1.ping();
                    if (servo1_online) {
                        std::cout << "舵机 ID 1 重新初始化成功" << std::endl;
                    } else {
                        std::cout << "舵机 ID 1 重新初始化失败，请检查连接" << std::endl;
                    }
                }
                break;
            case 'q':
            case 'Q': // 退出程序
                std::cout << "\n正在退出程序..." << std::endl;

                // 停止异步模式并设置舵机为阻尼模式
                if (servo0_online) {
                    servo0.SetEndAsync(0); // 结束异步模式
                    servo0.setDamping(300); // 设置阻尼模式，功率300mW
                    std::cout << "舵机 ID 0 已设置为阻尼模式" << std::endl;
                }
                if (servo1_online) {
                    servo1.SetEndAsync(0); // 结束异步模式
                    servo1.setDamping(300); // 设置阻尼模式，功率300mW
                    std::cout << "舵机 ID 1 已设置为阻尼模式" << std::endl;
                }

                std::cout << "程序已退出" << std::endl;
                return 0;
            default:
                break;
        }
    }

    return 0;
}