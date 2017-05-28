include $(THEOS)/makefiles/common.mk

GO_EASY_ON_ME = 1

BUNDLE_NAME = BetterMessages
BetterMessages_FILES = bettermessagesRootListController.m
BetterMessages_INSTALL_PATH = /Library/PreferenceBundles
BetterMessages_FRAMEWORKS = UIKit CoreGraphics
BetterMessages_PRIVATE_FRAMEWORKS = Preferences
BetterMessages_EXTRA_FRAMEWORKS += Cephei 
BetterMessages_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BetterMessages.plist$(ECHO_END)
