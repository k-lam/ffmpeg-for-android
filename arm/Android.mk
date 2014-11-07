LOCAL_PATH := $(call my-dir)

#
#libavutil.a
#

    include $(CLEAR_VARS)
    LOCAL_MODULE := libavutil
    LOCAL_SRC_FILES := lib/libavutil.a
    LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
    LOCAL_EXPORT_CFLAGS := -DUT=1
    include $(PREBUILT_STATIC_LIBRARY)


#
#libavcodec.a
#
    include $(CLEAR_VARS)
    LOCAL_MODULE := libavcodec
    LOCAL_SRC_FILES := lib/libavcodec.a
    LOCAL_EXPORT_CFLAGS := -DCODEC=2
#	LOCAL_CFLAGS := -DCODEC=2
#    LOCAL_STATIC_LIBRARIES := libavutil
    LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
    include $(PREBUILT_STATIC_LIBRARY)


#
#libavformat.a
#

    include $(CLEAR_VARS)
    LOCAL_MODULE := libavformat
    LOCAL_SRC_FILES := lib/libavformat.a
    LOCAL_EXPORT_CFLAGS := -DFORMAT=3
#    LOCAL_CFLAGS := -DFORMAT=3
#    LOCAL_STATIC_LIBRARIES := libavcodec  libavutil 
    LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
    include $(PREBUILT_STATIC_LIBRARY)

#
#libswscale.a
#

    include $(CLEAR_VARS)
    LOCAL_MODULE := libswscale
    LOCAL_SRC_FILES := lib/libswscale.a
#    LOCAL_STATIC_LIBRARIES := libavutil
    LOCAL_EXPORT_CFLAGS := -DSCALE=4
    LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
    include $(PREBUILT_STATIC_LIBRARY)

#
#libswresample.a
#

    include $(CLEAR_VARS)
    LOCAL_MODULE := libswresample
    LOCAL_SRC_FILES := lib/libswresample.a
#    LOCAL_STATIC_LIBRARIES := libavutil
    LOCAL_EXPORT_CFLAGS := -DSCALE=5
    LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
    include $(PREBUILT_STATIC_LIBRARY)

#
#libavfilter.a
#

    include $(CLEAR_VARS)
    LOCAL_MODULE := libavfilter
    LOCAL_SRC_FILES := lib/libavfilter.a
#    LOCAL_STATIC_LIBRARIES := libswresample libswscale libavformat libavcodec libavutil 
    LOCAL_EXPORT_CFLAGS := -DSCALE=6
    LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
    include $(PREBUILT_STATIC_LIBRARY)






