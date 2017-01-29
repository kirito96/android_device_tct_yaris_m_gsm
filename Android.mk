LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),yaris_m_gsm)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
