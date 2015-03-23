LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_CPPFLAGS := -std=c++14 -Weverything

LOCAL_CPPFLAGS += \
    -Wno-c++98-compat-pedantic \
    -Wno-float-equal \
    -Wno-global-constructors \
    -Wno-missing-braces \
    -Wno-padded

LOCAL_SRC_FILES:=   \
    DirtyRect.cpp

LOCAL_MODULE:= dirtyrect

LOCAL_MODULE_PATH := $(TARGET_OUT_DATA)/local/tmp
LOCAL_SHARED_LIBRARIES := \
    libEGL \
    libGLESv2 \
    libgui \
    libutils

# libEGL      \
  libcutils   \
  libgui      \
  libui       \
  libutils    \

include $(BUILD_EXECUTABLE)
