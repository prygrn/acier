# SPDX-License-Identifier: GPL-2.0
# Template from buildroot-external/buildroot/docs/manual/customize-directory-structure.adoc

# Avoid surprises by disabling default rules
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

THIS_EXTERNAL_PATH := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

OUTPUT_DIR = $(THIS_EXTERNAL_PATH)/output

MAKE_BUILDROOT = $(MAKE) -C $(THIS_EXTERNAL_PATH)/buildroot BR2_EXTERNAL=$(THIS_EXTERNAL_PATH)

%: $(THIS_EXTERNAL_PATH)/configs/%
	$(MAKE_BUILDROOT) O=$(OUTPUT_DIR) $@
