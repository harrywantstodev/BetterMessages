include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = BetterMessages
BetterMessages_FILES = bettermessagesRootListController.m
BetterMessages_INSTALL_PATH = /Library/PreferenceBundles
BetterMessages_FRAMEWORKS = UIKit
BetterMessages_PRIVATE_FRAMEWORKS = Preferences
BetterMessages_EXTRA_FRAMEWORKS += Cephei cepheiprefs 
BetterMessages_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BetterMessages.plist$(ECHO_END)
