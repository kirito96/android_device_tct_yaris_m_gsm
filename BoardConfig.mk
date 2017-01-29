# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := yaris

# Platform
TARGET_BOARD_PLATFORM := mt6572

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Kernel
TARGET_PREBUILT_KERNEL := device/alcatel/yaris/kernel
BOARD_KERNEL_CMDLINE := 
BOARD_MKBOOTIMG_ARGS := --base 0x80000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --board 1429947554 --mtk 1
BOARD_CUSTOM_MKBOOTIMG := mtkbootimg
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/alcatel/yaris/bootimg.mk

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun0/file

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 54001664
BOARD_BOOTIMAGE_PARTITION_SIZE := 54001664

# Device-Specific
DEVICE_RESOLUTION := 480 x 800
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# TWRP-Specific
TARGET_RECOVERY_FSTAB := device/alcatel/yaris/recovery/etc/twrp.fstab
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_THEME := portrait_mdpi
TW_EXCLUDE_MTP := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_CPU_TEMP := true
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
