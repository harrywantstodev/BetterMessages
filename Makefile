include $(THEOS)/makefiles/common.mk

GO_EASY_ON_ME = 1

TWEAK_NAME = BetterMessages
BetterMessages_FILES = BetterMessages.xm
BetterMessages_EXTRA_FRAMEWORKS += Cephei 
BetterMessages_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += bettermessages
include $(THEOS_MAKE_PATH)/aggregate.mk
