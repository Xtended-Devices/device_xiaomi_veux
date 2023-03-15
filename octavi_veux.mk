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

# Inherit some common Octavi stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

PRODUCT_SOONG_NAMESPACES += \
$(LOCAL_PATH) \
hardware/qcom-caf/sm8350

BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := sm6375

WITH_GAPPS := true

OCTAVI_BUILD_TYPE := UnOfficial
OCTAVI_DEVICE_MAINTAINER := mlzdbz

PRODUCT_NAME := octavi_veux
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X4 Pro 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ1A.230205.002 9471150 release-keys"

BUILD_FINGERPRINT := "google/cheetah/cheetah:13/TQ1A.230205.002/9471150:user/release-keys"

