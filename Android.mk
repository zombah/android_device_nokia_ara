#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),ara)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

FIRMWARE_ADSP_IMAGES := \
    adsp.b00 adsp.b01 adsp.b02 adsp.b03 adsp.b04 \
    adsp.b05 adsp.b06 adsp.b07 adsp.b08 adsp.mdt

FIRMWARE_ADSP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_ADSP_IMAGES)))
$(FIRMWARE_ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ADSP Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_ADSP_SYMLINKS)

FIRMWARE_MBA_IMAGES := \
    mba.b00 mba.mdt

FIRMWARE_MBA_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MBA_IMAGES)))
$(FIRMWARE_MBA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MBA Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MBA_SYMLINKS)

FIRMWARE_MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b06 modem.b09 modem.b16 modem.b17 modem.b18 modem.b19 \
    modem.b20 modem.b21 modem.b22 modem.b23 modem.b24 modem.b27 \
    modem.b28 modem.b29 modem.mdt

FIRMWARE_MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MODEM_IMAGES)))
$(FIRMWARE_MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MODEM_SYMLINKS)

FIRMWARE_WCNSS_IMAGES := \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 \
    wcnss.b07 wcnss.b08 wcnss.b09 wcnss.mdt

FIRMWARE_WCNSS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_WCNSS_IMAGES)))
$(FIRMWARE_WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_WCNSS_SYMLINKS)

FIRMWARE_NEMO_IMAGES := \
    nemotz.b00 nemotz.b01 nemotz.b02 nemotz.b03 nemotz.mdt

FIRMWARE_NEMO_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_NEMO_IMAGES)))
$(FIRMWARE_NEMO_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Nemod Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_NEMO_SYMLINKS)

FIRMWARE_CMNLIB_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmblib.b02 cmnlib.b03 cmblib.mdt

FIRMWARE_CMNLIB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_CMNLIB_IMAGES)))
$(FIRMWARE_CMNLIB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Cmnlib Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_CMNLIB_SYMLINKS)

endif
