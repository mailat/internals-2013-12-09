# Get the long list of APNs
#PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Discard inherited values and use our own instead
PRODUCT_NAME := full_marakana_alpha
PRODUCT_DEVICE := alpha
PRODUCT_MODEL := Full Marakana Alpha Image for Emulator
#PRODUCT_BRAND := Android_Marakana
#PRODUCT_MANUFACTURER := Marakana

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/marakana/alpha/device.mk)

# Include the common definitions and packages
include $(LOCAL_PATH)/common.mk
