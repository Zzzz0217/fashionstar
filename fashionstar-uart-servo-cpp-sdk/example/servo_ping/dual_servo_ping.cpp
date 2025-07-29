/*
 * 双舵机通讯检测
 * --------------------------
 * 作者: 深圳市华馨京科技有限公司
 * 网站：https://fashionrobo.com/
 * 更新时间: 2024/08/05
 * 功能: 检测两个舵机(ID: 0, 1)的在线状态
 **/

#include <iostream>

#include "CSerialPort/SerialPort.h"
#include "FashionStar/UServo/FashionStar_UartServoProtocol.h"
#include "FashionStar/UServo/FashionStar_UartServo.h"

// 总线伺服舵机配置
// 设置总线伺服Servo转接板的端口号
#ifdef _WIN32
#define SERVO_PORT_NAME "COM8" 	        // Windows下端口号名称 COM{}
#else
#define SERVO_PORT_NAME "/dev/ttyUSB0" 	// Linux下端口号名称 /dev/ttyUSB{}
#endif
#define SERVO_ID_1 0 				    // 第一个舵机ID号
#define SERVO_ID_2 1 				    // 第二个舵机ID号

using namespace std;
using namespace fsuservo;

// 创建协议对象
FSUS_Protocol protocol(SERVO_PORT_NAME, FSUS_DEFAULT_BAUDRATE);
// 创建两个舵机对象
FSUS_Servo servo0(SERVO_ID_1, &protocol);
FSUS_Servo servo1(SERVO_ID_2, &protocol);

int main(){
	cout << "Example Dual Uart Servo Ping" << endl;
	cout << "检测舵机 ID " << SERVO_ID_1 << " 和 ID " << SERVO_ID_2 << " 的在线状态" << endl;
	cout << "----------------------------------------" << endl;

	while(true){
		// 检测第一个舵机
		bool servo0_online = servo0.ping();
		// 检测第二个舵机
		bool servo1_online = servo1.ping();

		// 打印第一个舵机状态
		cout << "Servo ID = " << SERVO_ID_1 << " , is ";
 		if (servo0_online){
			cout << "online";
		}else{
			cout << "offline";
		}

		// 打印第二个舵机状态
		cout << " | Servo ID = " << SERVO_ID_2 << " , is ";
 		if (servo1_online){
			cout << "online";
		}else{
			cout << "offline";
		}
		cout << endl;

		// 统计信息
		int online_count = (servo0_online ? 1 : 0) + (servo1_online ? 1 : 0);
		cout << "在线舵机数量: " << online_count << "/2" << endl;
		cout << "----------------------------------------" << endl;

		// 延时1s
		protocol.delay_ms(1000);
	}
}