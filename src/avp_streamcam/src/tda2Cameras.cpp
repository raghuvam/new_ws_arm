#include <boost/thread.hpp>

#include <ros/ros.h>
#include <ros/time.h>

#include "sensor_msgs/Image.h"
#include "sensor_msgs/image_encodings.h"
#include "sensor_msgs/CameraInfo.h"
#include "camera_info_manager/camera_info_manager.h"
#include "image_transport/image_transport.h"

#include <opencv2/opencv.hpp>

#define DISP_MOV 0

#if DISP_MOV
#include <opencv/cv.h>

#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#endif
#include "tda2Cameras.h"

using namespace sensor_msgs;


Tda2Cam::Tda2Cam(ros::NodeHandle comm_nh, ros::NodeHandle param_nh) :
  node_(comm_nh), pnode_(param_nh), it_(comm_nh),
  cam_info_mgr_0_(ros::NodeHandle(comm_nh, "cam0"), "avp_camera"),
  cam_info_mgr_1_(ros::NodeHandle(comm_nh, "cam1"), "avp_camera") {

  /* default config values */
  width_ = 1280;
  height_ = 720;
  fps_ = 10;
  skip_frames_ = 0;
  frames_to_skip_ = 0;
  frame_ = "TDA2 camera";

  /* set up information managers */
  std::string cam0_url, cam1_url;

  pnode_.getParam("cam0/camera_info_url", cam0_url);
  pnode_.getParam("cam1/camera_info_url", cam1_url);

  cam_info_mgr_0_.loadCameraInfo(cam0_url);
  cam_info_mgr_1_.loadCameraInfo(cam1_url);

  /* pull other configuration */
  pnode_.getParam("cam0/src", camSrc_0_);
  pnode_.getParam("cam1/src", camSrc_1_);

  pnode_.getParam("fps", fps_);
  pnode_.getParam("skip_frames", skip_frames_);

  pnode_.getParam("width", width_);
  pnode_.getParam("height", height_);

  pnode_.getParam("frame_id", frame_);

  /* advertise image streams and info streams */
  cam_pub_0_ = it_.advertise("cam0/image_raw", 1);
  cam_pub_1_ = it_.advertise("cam1/image_raw", 1);

  cam_info_pub_0_ = node_.advertise<CameraInfo>("cam0/camera_info", 1);
  cam_info_pub_1_ = node_.advertise<CameraInfo>("cam1/camera_info", 1);

  ROS_INFO("tda2_cam video_src 0 set to [%s]\n", camSrc_0_.c_str());
  ROS_INFO("tda2_cam video_src 1 set to [%s]\n", camSrc_1_.c_str());


  ROS_INFO("Camera 0 info url: %s", cam0_url.c_str());
  ROS_INFO("Camera 1 info url: %s", cam1_url.c_str());


  ROS_INFO("tda2_cam image_width set to [%d]\n", width_);
  ROS_INFO("tda2_cam image_height set to [%d]\n", height_);
  
  ROS_INFO("Wating 2 seconds ...  \n");
  sleep(0.02);
  ROS_INFO("Wating 2 seconds ...  \n");
  sleep(2);

  /* and turn on the streamer */
  image_thread = boost::thread(boost::bind(&Tda2Cam::feedImages, this));
}

void Tda2Cam::sendInfo(ros::Time time) {
  CameraInfoPtr info_cam0(new CameraInfo(cam_info_mgr_0_.getCameraInfo()));
  CameraInfoPtr info_cam1(new CameraInfo(cam_info_mgr_1_.getCameraInfo()));

  info_cam0->header.stamp = time;
  info_cam1->header.stamp = time;
  info_cam0->header.frame_id = frame_;
  info_cam1->header.frame_id = frame_;

  cam_info_pub_0_.publish(info_cam0);
  cam_info_pub_1_.publish(info_cam1);
}

static int callNum = 0;
void Tda2Cam::feedImages() 
{

        unsigned int pair_id = 0;

#if DISP_MOV
        std::string dispTitle_0 = "Camera 0";
        std::string dispTitle_1 = "Camera 1";
#endif


        ros::Time capture_time = ros::Time::now();

        ROS_INFO(" feedImages:: Video files = %s and %s \n", camSrc_0_.c_str(),camSrc_1_.c_str());
        cv::VideoCapture myVideo_0(camSrc_0_);
    
        cv::VideoCapture myVideo_1(camSrc_1_);

        cv::Mat frame_0,frame_1;
        int key = 0;
        int fps = myVideo_0.get(CV_CAP_PROP_FPS);
        ROS_INFO("fps =  %d \n",fps);
        fps_ = fps;
        int frWidth = (int)myVideo_0.get(CV_CAP_PROP_FRAME_WIDTH);
        width_  = frWidth;
        int frHeight = (int)myVideo_0.get(CV_CAP_PROP_FRAME_HEIGHT);
        height_  = frHeight;
        int numFr = (int)myVideo_0.get(CV_CAP_PROP_FRAME_COUNT);
        if (numFr < 0)
            numFr = 1000;
        int frNum = (int)myVideo_0.get(CV_CAP_PROP_POS_FRAMES);

        ROS_INFO("Width =  %d, Height = %d, Number of Frames =  %d, Frame Num =  %d \n",frWidth,frHeight, numFr,frNum);
        ImagePtr image_cam0(new Image);
        ImagePtr image_cam1(new Image);
        int frPos_0 = 0;
        int frPos_1 = 0;
        callNum++;
        ROS_INFO(" Call Number = %d \n", callNum);
        sleep(1);

        while ((frPos_1<numFr) && (frPos_0<numFr))
        {
            frPos_0 = (int)myVideo_0.get(CV_CAP_PROP_POS_FRAMES);
            frPos_1 = (int)myVideo_1.get(CV_CAP_PROP_POS_FRAMES);
	    myVideo_0 >> frame_0;
  	    myVideo_1 >> frame_1;


            if (skip_frames_ == 0 || frames_to_skip_ == 0) 
            {
                if (~frame_0.empty() && ~frame_1.empty()) 
                {

                    const unsigned char *charFrame_0 = frame_0.ptr<unsigned char>(0);
                    const unsigned char *charFrame_1 = frame_1.ptr<unsigned char>(0);

                    ROS_INFO("feedImages pair_id = %d, frPos_0 = %d \n",pair_id, frPos_1);

                    image_cam0->height = height_;
                    image_cam0->width = width_;
                    image_cam0->step = 3 * width_;
                    image_cam0->encoding = image_encodings::RGB8;
                    image_cam0->header.stamp = capture_time;
                    image_cam0->header.seq = pair_id;

                    image_cam1->height = height_;
                    image_cam1->width = width_;
                    image_cam1->step = 3 * width_;
                    image_cam1->encoding = image_encodings::RGB8;
                    image_cam1->header.stamp = capture_time;
                    image_cam1->header.seq = pair_id;

                    image_cam0->header.frame_id = frame_;
                    image_cam1->header.frame_id = frame_;

                    image_cam0->data.resize(image_cam0->step * image_cam0->height);
                    image_cam1->data.resize(image_cam1->step * image_cam1->height);
                    if (~frame_0.isContinuous())
                        memcpy(&image_cam0->data[0], charFrame_0, width_ * height_ * 3);
                    else
                        ROS_INFO("Problem in publishing camera 0 data \n");
  
                    if (~frame_1.isContinuous())
                        memcpy(&image_cam1->data[0], charFrame_1, width_ * height_ * 3);
                    else
                        ROS_INFO("Problem in publishing camera 1 data \n");
  
                    cam_pub_0_.publish(image_cam0);
                    cam_pub_1_.publish(image_cam1);

                    sendInfo(capture_time);
                    ++pair_id;
                }
                frames_to_skip_ = skip_frames_;
            } 
            else 
            {
                frames_to_skip_--;
            }

#if DISP_MOV
            imshow(dispTitle_0, frame_0);
            imshow(dispTitle_1, frame_1);
#endif
          //Slow down display to achieve fps (approx.)
          sleep(1.0/fps_);
        }
	myVideo_0.release();
	myVideo_1.release();
#if DISP_MOV
	cv::destroyWindow(dispTitle_0);
	cv::destroyWindow(dispTitle_1);
#endif
        ROS_INFO("Done displaying ... Ctrl-C to quit ");
}

Tda2Cam::~Tda2Cam() {

  ok_ = false;
  image_thread.join();
  ROS_INFO("In Destructor ... ");  
#if 0
  if (cam_left)
    delete cam_left;
  if (cam_right)
    delete cam_right;
#endif
}

