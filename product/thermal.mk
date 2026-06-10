# Thermal manager
PRODUCT_PACKAGES += \
    thermal_manager \
    libmtcloader \
    libperfservicenative

# Perfomance configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/perfomance/perfservscntbl.txt:system/etc/perfservscntbl.txt \
    $(LOCAL_PATH)/configs/perfomance/boost-perf.conf:system/etc/boost-perf.conf
