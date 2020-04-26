INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DontFreeze

DontFreeze_FILES = Tweak.x
DontFreeze_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
