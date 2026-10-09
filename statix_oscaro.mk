#
# StatiXOS product for the OnePlus Nord CE 2 Lite 5G (oscaro / SM6375)
# Branch: bp4a (Android 16 QPR2)
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# StatiXOS ROM layer (replaces vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# StatiXOS: prebuilt kernel (device/oneplus/oscaro-kernel, branch bp4a)
TARGET_KERNEL_DIR ?= device/oneplus/oscaro-kernel
PRODUCT_COPY_FILES += \
    $(TARGET_KERNEL_DIR)/Image:kernel
PRODUCT_VENDOR_KERNEL_HEADERS += \
    $(TARGET_KERNEL_DIR)/kernel-headers

# Identity (must come after all inclusions)
PRODUCT_NAME := statix_oscaro
PRODUCT_DEVICE := oscaro
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := CPH2381
PRODUCT_MANUFACTURER := oneplus
PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OP535DL1-user 14 UKQ1.230924.001 S.23d3b43-3-2 release-keys" \
    BuildFingerprint=OnePlus/CPH2381/OP535DL1:14/UKQ1.230924.001/S.23d3b43-3-2:user/release-keys \
    DeviceName=OP535DL1 \
    DeviceProduct=OP535DL1 \
    SystemDevice=OP535DL1 \
    SystemName=OP535DL1
