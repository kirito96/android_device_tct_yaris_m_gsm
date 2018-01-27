# inherit from the proprietary version
-include vendor/TCT/Yaris_M_GSM/BoardConfigVendor.mk


# Board
TARGET_BOARD_PLATFORM := mt6572
TARGET_NO_BOOTLOADER := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
DEVICE_RESOLUTION := 480x800
BOARD_HAS_NO_SELECT_BUTTON := true

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 545259520
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 512

TARGET_BOOTLOADER_BOARD_NAME := Yaris_M_GSM

TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_MKBOOTIMG := mtkbootimg
BOARD_MKBOOTIMG_ARGS := --base 0x10000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --mtk 1
BOARD_CUSTOM_BOOTIMG_MK := device/TCT/Yaris_M_GSM/bootimg.mk

TARGET_PREBUILT_KERNEL := device/TCT/Yaris_M_GSM/kernel

# Assert
TARGET_OTA_ASSERT_DEVICE := Yaris_M_GSM,yaris_m_gsm,4032A


RECOVERY_VARIANT := twrp
#RECOVERY_VARIANT := philz
#RECOVERY_VARIANT := carliv

ifneq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := device/TCT/Yaris_M_GSM/recovery/recovery.fstab
endif


# CARLIV
ifeq ($(RECOVERY_VARIANT),carliv)
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_10x18.h\"
VIBRATOR_TIMEOUT_FILE := /sys/devices/virtual/timed_output/vibrator/enable
BOARD_HAS_MTK := true
BOARD_NEEDS_MTK_GETSIZE := true
DEVICE_RESOLUTION := 480x800
endif


# PHILZ
ifeq ($(RECOVERY_VARIANT),philz)
TARGET_COMMON_NAME := TCT Yaris_M_GSM
BOARD_USE_MTK_LAYOUT := true
BOARD_MTK_BOOT_LABEL := "/bootimg"
#BOARD_USE_NTFS_3G := false
BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
endif

# TWRP
ifeq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := device/TCT/Yaris_M_GSM/recovery/twrp.fstab
TW_NO_EXFAT := true
TWHAVE_SELINUX := true
TW_THEME := portrait_mdpi
TW_NO_EXFAT_FUSE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file"
TW_EXCLUDE_SUPERSU := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
DEVICE_RESOLUTION := 480x800
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
endif
