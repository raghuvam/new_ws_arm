// Include the ROS C++ APIs#include <linux/examples/tda2xx/include/chains.h> #include <linux/examples/tda2xx/include/chains_common.h>


#include <ros/ros.h>

extern "C" 
{
#include "EncNull.h"
}



int main(int argc, char** argv) {


	ros::init(argc, argv, "");

	ros::start();

	ROS_INFO_STREAM("This is OV cam streamer ROS node");

//////////////////////////////////////
///        VISION_SDK_CODE         ///
//////////////////////////////////////

vision_sdk_main();

///////////////////////////////////////


	ROS_INFO_STREAM("Debug: ROS test");


	ros::spin();

  	ros::shutdown();
  // Exit tranquilly
  return 0;
}
