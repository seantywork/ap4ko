ifeq ($(CONFIG_PLATFORM_RTK1319), y)
EXTRA_CFLAGS += -DCONFIG_LITTLE_ENDIAN
EXTRA_CFLAGS += -DCONFIG_IOCTL_CFG80211 -DRTW_USE_CFG80211_STA_EVENT
EXTRA_CFLAGS += -DCONFIG_RADIO_WORK
EXTRA_CFLAGS += -DCONFIG_CONCURRENT_MODE

EXTRA_CFLAGS += -DRTK_1319_PLATFORM -DCONFIG_RF4CE_COEXIST

ARCH ?= arm
# For Android 10
#CROSS_COMPILE :=/sweethome/zhenrc/Workshop/1619/atv-9.0/phoenix/toolchain/asdk-6.4.1-a53-EL-4.9-g2.26-a32nut-180831/bin/arm-linux-gnueabi-
#KSRC :=/sweethome/zhenrc/Workshop/1619/atv-9.0/hydra/linux-kernel-1319
# For TV image
CROSS_COMPILE :=/sweethome/zhenrc/Workshop/1619/atv-9.0/phoenix/toolchain/asdk-6.4.1-a53-EL-4.9-g2.26-a32nut-180831/bin/arm-linux-gnueabi-
KSRC := /sweethome/zhenrc/Workshop/1319/q_tv_kernel_ax

ifeq ($(CONFIG_PCI_HCI), y)
EXTRA_CFLAGS += -DCONFIG_PLATFORM_OPS
_PLATFORM_FILES := platform/platform_linux_pc_pci.o
OBJS += $(_PLATFORM_FILES)
endif

endif
