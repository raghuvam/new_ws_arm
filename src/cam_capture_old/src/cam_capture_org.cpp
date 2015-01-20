// Include the ROS C++ APIs
#include <ros/ros.h>

extern "C"{

 #include "main.h"

}


// Standard C++ entry point
int main(int argc, char** argv) {
  // Announce this program to the ROS master as a "node" called "hello_world_node"
  ros::init(argc, argv, "hello_world_node");
  // Start the node resource managers (communication, time, etc)
  ros::start();
  // Broadcast a simple log message
  ROS_INFO_STREAM("Hello, This is Node_1");
  // Process ROS callbacks until receiving a SIGINT (ctrl-c)

///////// VISION_SDK_CODE ////////////

VisionSDK_main();

////////////////////////////////////////



  ros::spin();
  // Stop the node's resources
  ros::shutdown();
  // Exit tranquilly
  return 0;
}
