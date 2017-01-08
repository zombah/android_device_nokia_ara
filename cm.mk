# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nokia/ara/ara.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ara
PRODUCT_NAME := cm_ara
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := ara
PRODUCT_MANUFACTURER := Nokia
PRODUCT_RELEASE_NAME := ara

PRODUCT_GMS_CLIENTID_BASE := android-nokia
