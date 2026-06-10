DEVICE_PATH := device/meizu/m5c

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/mtk/include

# Device product elements
############################################################################################
# Audio | Media
include $(DEVICE_PATH)/product/audio.mk
include $(DEVICE_PATH)/product/media.mk

# Telephony | Connectivity
include $(DEVICE_PATH)/product/ril.mk
include $(DEVICE_PATH)/product/telecomm.mk
include $(DEVICE_PATH)/product/radio.mk
include $(DEVICE_PATH)/product/wifi.mk
include $(DEVICE_PATH)/product/bluetooth.mk
include $(DEVICE_PATH)/product/gps.mk
include $(DEVICE_PATH)/product/fm.mk

# Fuelgauge | Power | Thermal
include $(DEVICE_PATH)/product/power.mk
include $(DEVICE_PATH)/product/fuelgauged.mk
include $(DEVICE_PATH)/product/thermal.mk

# Lights | Display
include $(DEVICE_PATH)/product/lights.mk
include $(DEVICE_PATH)/product/input.mk
include $(DEVICE_PATH)/product/display.mk
include $(DEVICE_PATH)/product/sensors.mk
include $(DEVICE_PATH)/product/LiveDisplay.mk

# Camera
include $(DEVICE_PATH)/product/camera.mk

# System | Core
include $(DEVICE_PATH)/product/hardware.mk
include $(DEVICE_PATH)/product/ramdisk.mk
include $(DEVICE_PATH)/product/usb.mk
include $(DEVICE_PATH)/product/fs_manag.mk
include $(DEVICE_PATH)/product/memtrack.mk
include $(DEVICE_PATH)/product/mrdump.mk

# Apps
include $(DEVICE_PATH)/product/EngineerMode.mk
include $(DEVICE_PATH)/product/YGPS.mk
include $(DEVICE_PATH)/product/wallpaper.mk
include $(DEVICE_PATH)/product/browser.mk

# Doze
include $(DEVICE_PATH)/product/doze.mk
############################################################################################

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor product configurations
$(call inherit-product-if-exists, vendor/meizu/m5c/m5c-vendor.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.adb.secure=0 \
	persist.service.acm.enable=0 \
	ro.mount.fs=EXT4 \
	camera.disable_zsl_mode=1
