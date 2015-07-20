THEOS_PACKAGE_DIR_NAME = debs
include theos/makefiles/common.mk
export ARCHS = armv7 arm64

TWEAK_NAME = NoMoreSeparators
NoMoreSeparators_FILES = Tweak.xm
NoMoreSeparators_FRAMEWORKS = UIKit Foundation 

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
