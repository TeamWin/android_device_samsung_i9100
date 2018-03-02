# Release name
PRODUCT_RELEASE_NAME := i9100

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Use Emulated Storage (requires re-PIT)
TARGET_USE_EMULATED_STORAGE := true

# TWRP
ifeq ($(TARGET_USE_EMULATED_STORAGE),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp-emu.fstab:recovery/root/etc/twrp.fstab
else
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab
endif

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9100
PRODUCT_NAME := omni_i9100
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
