# Broadcom SAI modules

BRCM_OPENNSL_KERNEL_VERSION = 3.7.3.3-1

BRCM_OPENNSL_KERNEL = opennsl-modules_$(BRCM_OPENNSL_KERNEL_VERSION)_amd64.deb
$(BRCM_OPENNSL_KERNEL)_SRC_PATH = $(PLATFORM_PATH)/saibcm-modules
$(BRCM_OPENNSL_KERNEL)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
SONIC_DPKG_DEBS += $(BRCM_OPENNSL_KERNEL)

