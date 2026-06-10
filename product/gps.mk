# GPS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# GPS library
PRODUCT_PACKAGES += \
    gps.mt6737m \
    libepos \
    mnld \
    libmnl \
    libcurl \
    wifi2agps \
    wmt_loader \
    mtk_agpsd

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml \
    $(LOCAL_PATH)/configs/gps/slp_conf:system/etc/slp_conf
