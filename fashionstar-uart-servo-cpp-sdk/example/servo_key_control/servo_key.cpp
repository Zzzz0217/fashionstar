/*
 * 键盘控制舵机转动示例
 * 按下 a/d 控制舵机逆时针/顺时针转动
 * 按下 w/s 控制舵机转速增减
 * --------------------------
 * 作者: 深圳市华馨京科技有限公司
 * 网站：https://fashionrobo.com/
 */
#include <iostream>
#include <termios.h>
#include <unistd.h>
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
    // 初始化串口协议
    FSUS_Protocol protocol("/dev/ttyUSB0", FSUS_DEFAULT_BAUDRATE);
    // 初始化舵机
    FSUS_Servo servo1(0, &protocol); // 第一个舵机
    servo1.init();
    FSUS_Servo servo2(1, &protocol); // 第二个舵机
    servo2.init();

    float angle1 = 0.0; // 第一个舵机当前角度
    float speed1 = 100.0; // 第一个舵机初始转速
    float angle2 = 0.0; // 第二个舵机当前角度
    float speed2 = 100.0; // 第二个舵机初始转速
    float angleStep = 5.0; // 角度步长
    float speedStep = 10.0; // 转速步长

    std::cout << "键盘控制两个舵机示例" << std::endl;
    std::cout << "第一个舵机控制：" << std::endl;
    std::cout << "按下 a/d 控制舵机逆时针/顺时针转动" << std::endl;
    std::cout << "按下 w/s 控制舵机转速增减" << std::endl;
    std::cout << "第二个舵机控制：" << std::endl;
    std::cout << "按下 左/右 控制舵机逆时针/顺时针转动" << std::endl;
    std::cout << "按下 上/下 控制舵机转速增减" << std::endl;
    std::cout << "按下 q 退出程序" << std::endl;

    while (true) {
        int key = getch();
        switch (key) {
            case 'a': // 第一个舵机逆时针转动
                angle1 -= angleStep;
                servo1.setAngle(angle1, speed1);
                std::cout << "第一个舵机逆时针转动，当前角度: " << angle1 << " 转速: " << speed1 << std::endl;
                if (angle1 < -180.0) {
                    angle1 = -180.0;
                    std::cout << "角度超出限制, 已调至边界" << std::endl;
                }
                break;
            case 'd': // 第一个舵机顺时针转动
                angle1 += angleStep;
                servo1.setAngle(angle1, speed1);
                std::cout << "第一个舵机顺时针转动，当前角度: " << angle1 << " 转速: " << speed1 << std::endl;
                if (angle1 > 180.0) {
                    angle1 = 180.0;
                    std::cout << "角度超出限制, 已调至边界" << std::endl;
                }
                break;
            case 'w': // 第一个舵机增加转速
                speed1 += speedStep;
                if (speed1 > 150.0) speed1 = 150.0; // 限制最大速度
                std::cout << "第一个舵机转速增加，当前转速: " << speed1 << " (单位: 度/秒)" << std::endl;
                break;
            case 's': // 第一个舵机减少转速
                speed1 -= speedStep;
                if (speed1 < 10.0) speed1 = 10.0; // 限制最小速度
                std::cout << "第一个舵机转速减少，当前转速: " << speed1 << " (单位: 度/秒)" << std::endl;
                break;
            case 0x1B: // 方向键
                getch(); // 忽略 [
                switch (getch()) {
                    case 0x41: // 上键
                        speed2 += speedStep;
                        if (speed2 > 150.0) speed2 = 150.0; // 限制最大速度
                        std::cout << "第二个舵机转速增加，当前转速: " << speed2 << " (单位: 度/秒)" << std::endl;
                        break;
                    case 0x42: // 下键
                        speed2 -= speedStep;
                        if (speed2 < 10.0) speed2 = 10.0; // 限制最小速度
                        std::cout << "第二个舵机转速减少，当前转速: " << speed2 << " (单位: 度/秒)" << std::endl;
                        break;
                    case 0x43: // 右键
                        angle2 += angleStep;
                        servo2.setAngle(angle2, speed2);
                        std::cout << "第二个舵机顺时针转动，当前角度: " << angle2 << " 转速: " << speed2 << std::endl;
                        if (angle2 > 180.0) {
                            angle2 = 180.0;
                            std::cout << "角度超出限制, 已调至边界" << std::endl;
                        }
                        break;
                    case 0x44: // 左键
                        angle2 -= angleStep;
                        servo2.setAngle(angle2, speed2);
                        std::cout << "第二个舵机逆时针转动，当前角度: " << angle2 << " 转速: " << speed2 << std::endl;
                        if (angle2 < -180.0) {
                            angle2 = -180.0;
                            std::cout << "角度超出限制, 已调至边界" << std::endl;
                        }
                        break;
                }
                break;
            case 'q': // 退出程序
                std::cout << "退出程序" << std::endl;
                return 0;
            default:
                break;
        }
    }

    return 0;
}