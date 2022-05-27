# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m31 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := m31
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_m31
PRODUCT_MODEL := SM-M315F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := m31
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="m31nsxx-user 12 SP1A.210812.016 M315FXXU2CVCE release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/m31nsxx/m31:12/SP1A.210812.016/M315FXXU2CVCE:user/release-keys
