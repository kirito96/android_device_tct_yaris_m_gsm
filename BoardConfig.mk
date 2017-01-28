USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/tct/yaris_m_gsm/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6572
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := yaris_m_gsm

BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_PREBUILT_KERNEL := device/tct/yaris_m_gsm/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RECOVERY_FSTAB := device/tct/yaris_m_gsm/recovery/recovery.fstab
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_MKBOOTIMG := $(HOST_OUT_EXECUTABLES)/mtkbootimg$(HOST_EXECUTABLE_SUFFIX)
BOARD_CUSTOM_BOOTIMG_MK := device/tct/yaris_m_gsm/bootimg.mk
BOARD_MKBOOTIMG_ARGS := --mtk 1

# TWRP
RECOVERY_VARIANT := twrp
TW_NO_EXFAT := true
TWHAVE_SELINUX := true
TW_THEME := portrait_mdpi
TW_NO_EXFAT_FUSE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
TW_EXCLUDE_SUPERSU := true
TARGET_RECOVERY_PIXEL_FORMAT := "BRGA_8888"
DEVICE_RESOLUTION := 480x800
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
