include theos/makefiles/common.mk
export ARCHS = armv7 armv7s arm64
export SDKVERSION = 7.1
TWEAK_NAME = unBold
unBold_FILES = Tweak.xm
unBold_FRAMEWORKS = Foundation UIKit CoreGraphics CoreImage QuartzCore
ADDITIONAL_OBJCFLAGS = -fobjc-arc
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
include $(THEOS_MAKE_PATH)/aggregate.mk
