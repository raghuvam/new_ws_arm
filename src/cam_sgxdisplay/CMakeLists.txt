# Declare the version of the CMake API for forward-compatibility
cmake_minimum_required(VERSION 2.8)

# Declare the name of the CMake Project
project(cam_sgxdisplay)


# Find Catkin
find_package(catkin REQUIRED COMPONENTS roscpp std_msgs sensor_msgs)

# Declare this project as a catkin package #MESSAGE(STATUS "raghu: " ${roscpp_LIBRARIES})
catkin_package()


set(LIBRARY_PATH -L/user/x0221391/cardimage_copy/rootfs/usr/lib -L/user/x0221391/cardimage_copy/rootfs/opt/ros/hydro/lib)


#####################################
##### VISION SDK DEPENDENCIES #######
#####################################

## vision sdk install directory ##
set(vision_sdk_PATH /user/x0221391/Documents/vision_sdk_live/VISION_SDK_02_03_00_00)

## set vision SDK include directoreis path and include the directories ##

set(visionSDK_INCLUDE_DIRS 
${vision_sdk_PATH}/vision_sdk/ ${vision_sdk_PATH}/vision_sdk/include/link_api/ 
${vision_sdk_PATH}/vision_sdk/linux/src/osa/include/ ${vision_sdk_PATH}/vision_sdk/linux/targetfs/usr/include 
${vision_sdk_PATH}/linux/src/osa/include 
)

include_directories(${visionSDK_INCLUDE_DIRS})

## set the objects directory
set(OBJS_DIR ${vision_sdk_PATH}/vision_sdk/binaries/obj/vision_sdk_examples/tda2xx-evm/a15/debug)

## set vision sdk build libraries 
## vision_sdk_linux_demo.a & vision_sdk_linux_lib.a 
##note: make sure that "make linux" and "make vision_sdk_linux" 
##is done under ${vision_sdk_PATH}/vision_sdk, which generates 
##the archives (.a files)  
set(visionSDK_LIBRARIES 
${vision_sdk_PATH}/vision_sdk/binaries/lib/a15/debug/vision_sdk_linux_demo.a 
${vision_sdk_PATH}/vision_sdk/binaries/lib/a15/debug/vision_sdk_linux_lib.a
)

## generic libraries
set(visionSDK_COMMON_LIBS  -L${vision_sdk_PATH}/vision_sdk/linux/targetfs/usr/lib -ldrm -ldrm_omap -lgbm -lEGL -lIMGegl -lpvr2d -lsrv_um -lGLESv2 -lwayland-server -lffi -ludev -lpthread -lm)

## set OBJS to all the necessary vision sdk object files ##
set (OBJS ${OBJS_DIR}/vision_sdk_linux_lib/system_linkApi.o ${OBJS_DIR}/vision_sdk_linux_lib/osa.o ${OBJS_DIR}/vision_sdk_linux_demo/chains_common.o ${OBJS_DIR}/vision_sdk_linux_lib/system_rpmsg.o ${OBJS_DIR}/vision_sdk_linux_lib/system_rpmsg_msgq.o ${OBJS_DIR}/vision_sdk_linux_lib/system_linkApi_local.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_mem.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_global_time.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_ipc_que.o ${OBJS_DIR}/vision_sdk_linux_lib/ipcInLink_drv.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_mbx.o ${OBJS_DIR}/vision_sdk_linux_lib/ipcInLink_tsk.o ${OBJS_DIR}/vision_sdk_linux_lib/ipcOutLink_drv.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_msgq.o ${OBJS_DIR}/vision_sdk_linux_lib/ipcOutLink_tsk.o ${OBJS_DIR}/vision_sdk_linux_lib/MultiProcCfg_dra7xx.o ${OBJS_DIR}/vision_sdk_linux_lib/MultiProc.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_prf.o ${OBJS_DIR}/vision_sdk_linux_lib/nullLink_tsk.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_que.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_buf.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_remote_log_client.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_cache.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_remote_log_server.o ${OBJS_DIR}/vision_sdk_linux_lib/system_rpmsg_notify.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_dma.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_thr.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_file.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_tsk.o ${OBJS_DIR}/vision_sdk_linux_lib/osa_mutex.o ${OBJS_DIR}/vision_sdk_linux_lib/system_common.o ${OBJS_DIR}/vision_sdk_linux_lib/sgxDisplayLink_drv.o ${OBJS_DIR}/vision_sdk_linux_lib/sgxDisplayLink_tsk.o ${OBJS_DIR}/vision_sdk_linux_lib/system_drm_egl.o ${OBJS_DIR}/vision_sdk_linux_lib/sgxRender1x1.o ${OBJS_DIR}/vision_sdk_linux_lib/sgxRender2x2.o ${OBJS_DIR}/vision_sdk_linux_lib/sgxRenderKmsCube.o ${OBJS_DIR}/vision_sdk_linux_lib/esTransform.o)
############################
##### COMPILER FLAGS #######
############################
## C FLAGS ##
set(CMAKE_C_FLAGS "-DTDA2XX_BUILD -DTDA2XX_FAMILY_BUILD -DPLATFORM_EVM_SI -DTDA2XX_1024MB_DDR -DUTILS_ASSERT_ENABLE -DFVID2_BACKWARD_COMPATIBLE -DUSE_STD_ASSERT -DTRACE_ENABLE -DASSERT_ENABLE -D_DRA7xx -D_SC_VER_1_16 -D__sysbios__ -DPROC_IPU1_0_INCLUDE -DTDA2XX_BUILD -DTDA2XX_FAMILY_BUILD -DPLATFORM_EVM_SI -DTDA2XX_1024MB_DDR -DUTILS_ASSERT_ENABLE -DFVID2_BACKWARD_COMPATIBLE -DUSE_STD_ASSERT -DTRACE_ENABLE -DASSERT_ENABLE -D_DRA7xx -D_SC_VER_1_16 -D__sysbios__ -DPROC_IPU1_0_INCLUDE -DPROC_DSP1_INCLUDE -DPROC_DSP2_INCLUDE -DA15_TARGET_OS_LINUX -DLINUX_BUILD -DPROC_IPU1_0_INCLUDE -DPROC_DSP1_INCLUDE -DPROC_DSP2_INCLUDE -DPROC_A15_0_INCLUDE -DA15_TARGET_OS_LINUX -DLINUX_BUILD -DPROC_IPU1_0_INCLUDE -DPROC_A15_0_INCLUDE -Wall -Warray-bounds -O3")
## CPP FLAGS ##
set(CMAKE_CXX_FLAGS " -DTDA2XX_BUILD -DTDA2XX_FAMILY_BUILD -DPLATFORM_EVM_SI -DTDA2XX_1024MB_DDR -DUTILS_ASSERT_ENABLE -DFVID2_BACKWARD_COMPATIBLE -DUSE_STD_ASSERT -DTRACE_ENABLE -DASSERT_ENABLE -D_DRA7xx -D_SC_VER_1_16 -D__sysbios__ -DPROC_IPU1_0_INCLUDE -DTDA2XX_BUILD -DTDA2XX_FAMILY_BUILD -DPLATFORM_EVM_SI -DTDA2XX_1024MB_DDR -DUTILS_ASSERT_ENABLE -DFVID2_BACKWARD_COMPATIBLE -DUSE_STD_ASSERT -DTRACE_ENABLE -DASSERT_ENABLE -D_DRA7xx -D_SC_VER_1_16 -D__sysbios__ -DPROC_IPU1_0_INCLUDE -DPROC_DSP1_INCLUDE -DPROC_DSP2_INCLUDE -DA15_TARGET_OS_LINUX -DLINUX_BUILD -DPROC_IPU1_0_INCLUDE -DPROC_DSP1_INCLUDE -DPROC_DSP2_INCLUDE -DPROC_A15_0_INCLUDE -DA15_TARGET_OS_LINUX -DLINUX_BUILD -DPROC_IPU1_0_INCLUDE -DPROC_A15_0_INCLUDE -Wall -Warray-bounds -O3"

############################

# Add the headers from catkin and components
include_directories(${catkin_INCLUDE_DIRS})
include_directories(include)



#link_directories (${LIBRARY_PATH})
link_directories(${vision_sdk_PATH}/vision_sdk/linux/targetfs/usr/lib)

add_executable(cam_sgxdisplay src/chains_vipSingleCam_SgxDisplay_priv.c src/chains_vipSingleCam_SgxDisplay.c src/main.c src/cam_capture.cpp)

target_link_libraries(cam_sgxdisplay ${visionSDK_LIBRARIES} ${visionSDK_COMMON_LIBS} ${catkin_LIBRARIES} -L/user/x0221391/cardimage_copy/rootfs/usr/share/ros/hydro/lib -lconsole_bridge -lapr-1 -laprutil-1 -licuuc -licui18n -luuid -licudata -lexpat)

