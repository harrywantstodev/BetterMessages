include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BetterMessages
BetterMessages_FILES = Tweak.xm
BetterMessages_EXTRA_FRAMEWORKS += Cephei cepheiprefs
BetterMessages_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += bettermessages
include $(THEOS_MAKE_PATH)/aggregate.mk
