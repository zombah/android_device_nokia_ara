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

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8610-user 4.4.2 KOT49H eng.root.20140509.130110 release-keys" \
    BUILD_FINGERPRINT="NOKIA/NOKIA-RM1013/NOKIA-RM1013:4.4.2/KOT49H/eng.root.20140509.130110:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-nokia
