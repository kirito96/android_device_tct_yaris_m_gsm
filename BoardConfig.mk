# inherit from the proprietary version
-include vendor/tct/yaris_m_gsm/BoardConfigVendor.mk

# Board
TARGET_BOARD_PLATFORM := mt6572
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
TARGET_NO_BOOTLOADER := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

BOARD_HAS_NO_SELECT_BUTTON := true

# Enable dex-preoptimization
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6572

TARGET_USERIMAGES_USE_EXT4:=true

# Assert
TARGET_OTA_ASSERT_DEVICE := yaris_m_gsm,Yaris_M_GSM,4032A,Yaris_M,4033

# MTK HARDWARE
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# RIL
BOARD_RIL_CLASS := ../../../device/tct/yaris_m_gsm/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# Partitions & Image
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1567096832
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 732430336
BOARD_CACHEIMAGE_PARTITION_SIZE := 1414004736
BOARD_CACHEIMAGE_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_KMODULES := true

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive selinux=0
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x10000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL := device/tct/yaris_m_gsm/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/tct/yaris_m_gsm/MTKbootimg.mk
BOARD_CUSTOM_BOOTIMG := true

# Recovery
TARGET_RECOVERY_FSTAB := device/tct/yaris_m_gsm/rootdir/recovery.fstab

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file"

# TWRP
#TARGET_RECOVERY_FSTAB := device/tct/yaris_m_gsm/recovery/twrp.fstab
#TW_NO_EXFAT := true
#TWHAVE_SELINUX := true
#TW_THEME := portrait_mdpi
#TW_NO_EXFAT_FUSE := true
#TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file"
#TW_EXCLUDE_SUPERSU := true
#TARGET_RECOVERY_PIXEL_FORMAT := "BRGA_8888"
#DEVICE_RESOLUTION := 480x800
#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
#TW_MAX_BRIGHTNESS := 255
#TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/tct/yaris_m_gsm/bluetooth

# Healthd
#HEALTHD_ENABLE_TRICOLOR_LED := true
#RED_LED_PATH := /sys/class/leds/red/brightness
#GREEN_LED_PATH := /sys/class/leds/green/brightness
#BLUE_LED_PATH := /sys/class/leds/blue/brightness

# EGL settings
BOARD_EGL_CFG := device/tct/yaris_m_gsm/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Selinux
BOARD_SEPOLICY_DIRS := \
       device/tct/yaris_m_gsm/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       netd.te \
       system.te \
       file_contexts

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/tct/yaris_m_gsm/include

LCM_HEIGHT=800
LCM_WIDTH=480
