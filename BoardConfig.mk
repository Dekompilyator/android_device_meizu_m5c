DEVICE_PATH := device/meizu/m5c
VENDOR_PATH := vendor/meizu/m5c

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_IS_64_BIT := true

# Device board elements
-include $(DEVICE_PATH)/board/*.mk
#######################################################################

# Platform
TARGET_BOARD_PLATFORM := mt6737m
TARGET_NO_BOOTLOADER := true

# MTK Hardmware
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Flags
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# System props
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS := $(DEVICE_PATH)/sepolicy

# Seccomp
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
