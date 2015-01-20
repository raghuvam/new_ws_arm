// Include the ROS C++ APIs
#include <ros/ros.h>
#include <opencv/cv.h>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace cv;
int i =1;

extern "C"
{
#include "main.h"

int frameStreamHandler(int *bufAddr,int fillLength,FILE *fpDataStream)
{


/*
stream = fopen(prefix,"w");

ROS_INFO_STREAM("writing the buffer");

fwrite(bufAddr,fillLength,1,stream);

fclose(stream);

i++;
FILE *stream;

char prefix[] = "./images/";

char filename[30];

sprintf(filename, "img_%d", i);

strcat(prefix,filename);

cv::Mat imgFrame = cv::imdecode(bufAddr,1);
cv::imwrite(prefix,imgFrame,1);
*/
fwrite(bufAddr,fillLength,1,fpDataStream);



return 0;
}
// avp

/*
int frameStreamHandler(System_BitstreamBuffer *bitstreamBuf,NullLink_Obj *pObj)
{
ROS_INFO_STREAM("writing the buffer");
fwrite(bitstreamBuf->bufAddr, bitstreamBuf->fillLength, 1, pObj->fpDataStream);
return 0;
}
*/

}


int main(int argc, char** argv) {

  ros::init(argc, argv, "hello_world_node");

  ros::start();

  ROS_INFO_STREAM("Hello, This is Node_1");


///////// VISION_SDK_CODE ////////////

VisionSDK_main();

////////////////////////////////////////



  ros::spin();
  ros::shutdown();

  return 0;
}
