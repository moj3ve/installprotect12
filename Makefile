include $(THEOS)/makefiles/common.mk

Pre-Depends: firmware (>= 10.0)

TWEAK_NAME = InstallProtect12
InstallProtect12_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
