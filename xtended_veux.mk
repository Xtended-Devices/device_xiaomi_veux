#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from veux device
$(call inherit-product, device/xiaomi/veux/device.mk)

# Inherit some common XT stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

PRODUCT_SOONG_NAMESPACES += \
$(LOCAL_PATH) \
hardware/qcom-caf/sm8350

# Inherit some xtended build stuff.
TARGET_BOOT_ANIMATION_RES := 1080
XTENDED_BUILD_TYPE := OFFICIAL
XTENDED_BUILD_MAINTAINER := mlzdbz
WITH_GAPPS=true
PROCESSOR_MODEL := sm6375
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
BOARD_USES_QCOM_HARDWARE := true

# Device Identification
PRODUCT_NAME := xtended_veux
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X4 Pro 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ1A.230205.002 9471150 release-keys"

BUILD_FINGERPRINT := "google/cheetah/cheetah:13/TQ1A.230205.002/9471150:user/release-keys"
