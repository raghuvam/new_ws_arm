cmake_minimum_required(VERSION 2.8.3)
project(avp_streamcam)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp std_msgs sensor_msgs image_transport cv_bridge std_msgs sensor_msgs camera_info_manager)


#set(SYSROOT ${UBUNTU_PATH})
#set (PKG_CONFIG_SYSROOT_DIR ${SYSROOT})
#set(PKG_CONFIG_PATH ${SYSROOT}/usr/lib/pkgconfig:${SYSROOT}/usr/local/lib/pkgconfig:${SYSROOT}/usr/lib/arm-linux-gnueabihf/pkgconfig:${SYSROOT}/usr/share/pkgconfig


#find_package( OpenCV REQUIRED )



###################################
## catkin specific configuration ##
###################################
catkin_package(
  INCLUDE_DIRS include
  LIBRARIES IPNC_client_streamcam
  CATKIN_DEPENDS roscpp std_msgs sensor_msgs image_transport cv_bridge
#  DEPENDS system_lib
)

SET(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(include)

## Declare a cpp library
add_library(avp_streamcam src/tda2Cameras.cpp)

## Declare a cpp executable
add_executable(publish_avpCamStream src/avp_camera_node.cpp)

## Add cmake target dependencies of the executable/library
## as an example, message headers may need to be generated before nodes
## Specify libraries to link a library or executable target against ${OpenCV_LIBS}  ${OpenCV_LIBS}

## sets the ubuntu rootfs path
set(UBUNTU_PATH /user/x0221391/ubuntu_arm/rootfs)

set(CMAKE_LIBRARY_PATH ${UBUNTU_PATH}/usr/lib/arm-linux-gnueabihf
${UBUNTU_PATH}/usr/share/ros/hydro/lib 
${UBUNTU_PATH}/rootfs/usr/lib 
${UBUNTU_PATH}/lib 
)

link_directories(
${UBUNTU_PATH}/lib 
${UBUNTU_PATH}/usr/lib
${UBUNTU_PATH}/usr/lib/arm-linux-gnueabihf
)

###explicitly linked libraries
###################


set(LIB_DEPENDENCIES -L${UBUNTU_PATH}/lib  -lcrypto -L/user/x0221391/ubuntu_arm/rootfs/usr/lib -ltinyxml -lbz2 -lorc-0.4  -L${UBUNTU_PATH}/usr/lib/arm-linux-gnueabihf -L/user/x0221391/ubuntu_arm/rootfs/usr/lib/arm-linux-gnueabihf -lva -lpthread -lv4lconvert -ljpeg -lbz2 -lpng12 -lxcb -lXau -lXdmcp -lxcb-shm  -lxcb-render -logg -lboost_system-mt -lgtk-x11-2.0 -lpangocairo-1.0 -lX11 -lXfixes -latk-1.0 -lcairo -lgio-2.0 -lpangoft2-1.0 -lfontconfig -lXext -lXrender -lpixman-1 -lXinerama -lXi -lXrandr -lXcursor -lXcomposite  -lXdamage -lgthread-2.0 -ltinyxml -lffi -lv4l2  -lvpx -lvorbisenc -lvorbis -ltheoraenc -ltheoradec -lspeex -lschroedinger-1.0 -lgsm -lavcodec -lbz2 -lyaml-cpp -lpcre -lfreetype -lgmodule-2.0 -lpython2.7 -lpango-1.0 -lgdk_pixbuf-2.0 -ljasper -ltiff -lgdk-x11-2.0 -lgobject-2.0 -lglib-2.0 -lv4l1 -lavcodec -lavformat -lavutil -lswscale -lcamera_calibration_parsers -lrospack -lpcre -ltinyxml -lapr-1 -laprutil-1 -licuuc -licui18n -luuid -licudata -lexpat -lz -lpython2.7 -lssl -lboost_program_options -lpthread ${UBUNTU_PATH}/usr/lib/arm-linux-gnueabihf/libcrypto.a -L${UBUNTU_PATH}/usr/share/ros/hydro/lib/ -lcamera_calibration_parsers -lrospack /user/x0221391/ubuntu_arm/rootfs/lib/arm-linux-gnueabihf/libbz2.so.1.0)



 target_link_libraries(avp_streamcam
   ${catkin_LIBRARIES} ${LIB_DEPENDENCIES}
   
 )

 target_link_libraries(publish_avpCamStream
   ${catkin_LIBRARIES} avp_streamcam ${LIB_DEPENDENCIES}
 )




