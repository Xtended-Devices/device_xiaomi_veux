#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/octavi_veux.mk

COMMON_LUNCH_CHOICES := \
    $(foreach variant, user userdebug eng, octavi_veux-$(variant))
