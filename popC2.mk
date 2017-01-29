$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Time Zone data Credits to desalesouche => http://forum.xda-developers.com/showpost.php?p=64850444&postcount=1204
#PRODUCT_COPY_FILES += \
#bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_RELEASE_NAME := 4013D

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

PRODUCT_NAME := popC2
PRODUCT_DEVICE := popC2
PRODUCT_BRAND := Alcatel
PRODUCT_MODEL := 4013D
PRODUCT_MANUFACTURER := Alcatel

PRODUCT_BUILD_PROP_OVERRIDES += \
	TARGET_DEVICE="4013D" \

ADDITIONAL_DEFAULT_PROPERTIES += \
ro.adb.secure=0 \
persist.sys.usb.config=mass_storage \
persist.service.acm.enable=0 \
ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
ro.zygote=zygote64_32 \
ro.mount.fs=EXT4 \
camera.disable_zsl_mode=1 \
dalvik.vm.dex2oat-Xms=64m \
dalvik.vm.dex2oat-Xmx=512m \
dalvik.vm.image-dex2oat-Xms=64m \
dalvik.vm.image-dex2oat-Xmx=64m \
ro.dalvik.vm.native.bridge=0
