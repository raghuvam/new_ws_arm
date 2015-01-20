// Include the ROS C++ APIs
#include <ros/ros.h>
#include <ros/time.h>
#include <nodelet/loader.h>
#include "sensor_msgs/Image.h"
#include "sensor_msgs/image_encodings.h"
#include "sensor_msgs/CameraInfo.h"
#include "camera_info_manager/camera_info_manager.h"
#include "image_transport/image_transport.h"

#include <opencv/cv.h>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace cv;
using namespace sensor_msgs;
int i=0;
unsigned int pair_id = 0;
image_transport::Publisher cam_pub_0_;
int first=0;
int *address;

FILE *stream;
char prefix[] = "./images/";
char filename[30];
//global opencv variables
//width_ = 1280;
//height_= 720;
//int fps = 30;
//string videoname = "out.avi";
//cv::VideoWriter writer;
// =new cv::VideoWriter(videoname, CV_FOURCC('M', 'J', 'P', 'G'), 
//			      fps,cv::Size(1280,720), true);



extern "C"
{
#include "main.h"

int frameStreamHandler(void *bufAddr,int fillLength,FILE *fpDataStream,int width,int height)
{

// STREAMER
ImagePtr image_cam0(new Image);

ros::Time capture_time = ros::Time::now();

// Initializing the ROS image Ptr
image_cam0->height = width;
image_cam0->width = height;
image_cam0->step = 3*width;
image_cam0->encoding = image_encodings::YUV422;
image_cam0->header.stamp = capture_time;
image_cam0->header.seq = pair_id;
image_cam0->header.frame_id = "TDA2 camera";
image_cam0->data.resize(fillLength);

//Publishing the image over a ROS topic
printf("fill-length: %d width: %d height: %d \n", fillLength,width,height);
ROS_INFO_STREAM("publishing the image");
memcpy(&image_cam0->data[0], bufAddr,image_cam0->step * image_cam0->height);
ROS_INFO_STREAM("publishing the image 2");
cam_pub_0_.publish(image_cam0);
ROS_INFO_STREAM("published the image");

return 0;
}

}


int main(int argc, char** argv) {

  ros::init(argc, argv, "hello_world_node");
 
  ros::NodeHandle nh;
  image_transport::ImageTransport it(nh);
  cam_pub_0_ = it.advertise("camera/image", 1);

  ros::start();

  ROS_INFO_STREAM("Hello, This is Node_1");

//writer.open(videoname, CV_FOURCC('M', 'J', 'P', 'G'), 
//			      fps,cv::Size(1280,720), true);

///////// VISION_SDK_CODE ////////////

VisionSDK_main();

////////////////////////////////////////



  ros::spin();
  ros::shutdown();

  return 0;
}
