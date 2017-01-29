ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),mt6572)

ifneq ($(BOARD_HAVE_BLUETOOTH_MTK),)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := external/bluetooth/bluedroid/hci/include

LOCAL_CFLAGS := -g -c -W -Wall -O2 -D_POSIX_SOURCE

LOCAL_SRC_FILES := libbt-vendor-mtk.c

LOCAL_SHARED_LIBRARIES := \
	libnativehelper \
	libcutils \
	libutils \
	liblog \
	libdl

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libbt-vendor
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)

include $(BUILD_SHARED_LIBRARY)

endif
endif
