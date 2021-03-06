/*
 * Display.h
 *
 *  Created on: Feb 24, 2014
 *      Author: a0132147
 */
/*! \file 	Display.h
 * 	\brief 	Contains Display class prototypes
 *
 * 	\author Udayan Dasgupta
 * 	\date 	Jan 16, 2014
 */

#ifndef DISPLAY_H_
#define DISPLAY_H_

//#include <string>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include <vector>
#include "stdint.h"
#include <opencv/cv.h>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
namespace avp {

/*! \class Display
 * \brief Objects of this class are used to read stream files in the LiU-streamformat.
 * StreamReader offers a set of methods to read out the information stored in the stream files.
 */
class Display {
public:
	Display();
	Display(const std::string fileStr_pre, const std::string fileStr_post,const std::string dispStr_pre,const int firstCamNum, const int numCam,const int numDigitsInCamIdx,const float startFrFrac,const float endFrFrac,const int dispStart_x,const int dispStart_y);
	Display(const std::string fileStr_pre, const std::string fileStr_post,const std::string dispStr_pre,const int firstCamNum, const int numCam,const int numDigitsInCamIdx,const float startFrFrac,const float endFrFrac,const int dispStart_x,const int dispStart_y,const int dispIncr_x,const int dispIncr_y);
	Display(const std::string camPath[], const int *vWidth, const int *vHeight, const std::string dispStr_pre,const int firstCamNum, const int numCam,const int dispStart_x,const int dispStart_y,const int dispIncr_x,const int dispIncr_y,const std::string library);
	int setup(const std::string fileStr_pre, const std::string fileStr_post,const std::string dispStr_pre,const int firstCamNum, const int numCam,const int numDigitsInCamIdx,const float startFrFrac,const float endFrFrac,const int dispStart_x,const int dispStart_y,const int dispIncr_x,const int dispIncr_y);
	int setup(const std::string fileStr_pre, const std::string fileStr_post,const std::string dispStr_pre,const int firstCamNum, const int numCam,const int numDigitsInCamIdx,const float startFrFrac,const float endFrFrac,const int dispStart_x,const int dispStart_y);
	int play_mem();
#if 0
	int play_cam();
#endif
private:
	std::string fileStr_pre;  //!< First (common) part of path containing the files to be displayed
	std::string fileStr_post; //!< Final (common) part of path containing the files to be displayed
	std::string dispTitle_pre; //!< First (common) part of display window title
	std::string dispTitle; //!< Complete display window title
	std::string fileStr; //!< Complete filename being read
	int firstCamNum; //!< First camera video/image sequence to be display
	int numCam; //!< Number of Cameras to be displayed
	int numDigitsInCamIdx; //!< Number of digits in camera index used in filename
	int startFrNum,endFrNum;
	float startFrFrac,endFrFrac;
	int dispStart_x; //!< X-coord of first display window
	int dispStart_y; //!< Y-coord of first display window
	int dispIncr_x; //!< Increment in X-coord of display windows
	int dispIncr_y; //!< Increment in Y-coord of display windows
	const std::string *camPath;
	const int *vWidth;
	const int *vHeight;
	std::string library;

	int playSingleVideo();
	int playMultVideos();
	int playNetCamVideo();
#if 0
	int playNetCamVideo_vlc();
#endif

}; // end of Display class
}; // end of avp namespace
#endif /* DISPLAY_H_ */
