THEOS_DEVICE_IP = 192.168.2.6
ARCHS  = armv7 armv7s arm64 arm64e
TARGET = iphone:latest:8.0
ADDITIONAL_OBJCFLAGS = -fobjc-arc
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LookinLoader
LookinLoader_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
