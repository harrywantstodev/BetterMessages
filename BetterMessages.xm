#import "bettermessages.h"

%hook CKTranscriptCollectionView
-(id) initWithFrame:(CGRect) arg1 collectionViewLayout:(id) arg2
{

	self = %orig;
	//img is the UIImage you want for your background! Boooh yah!
	UIImage *customImg = [UIImage imageWithContentsOfFile:customImgPath];
	UIImageView *test = [[UIImageView alloc] initWithImage:customImg];
    	test.contentMode = UIViewContentModeScaleAspectFill;
    	[self setBackgroundView:test];
			return %orig;
}
// -(void)layoutSubviews {
// 	%orig;
//
// self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:customImgPath]];
// self.view.contentMode = UIViewContentModeScaleAspectFit;
// self.view.clipsToBounds = YES;
//
// }
%end

%hook CKUIThemeDark
-(id)transcriptBackgroundColor
{ if ([[NSFileManager defaultManager] fileExistsAtPath:pathForImage]) {
  return [UIColor clearColor];
	} else {
		return %orig;
	}
}
-(UIColor *)entryFieldButtonColor
{
	return (LCPParseColorString([prefs objectForKey:@"plugincolor"], @"#868e99"));
}
- (id)blue_balloonTextColor {
  return (LCPParseColorString([prefs objectForKey:@"blueText"], @"#ffffff"));
}
- (id)green_balloonTextColor {
  return (LCPParseColorString([prefs objectForKey:@"greenText"], @"#ffffff"));
}
- (id)gray_balloonTextColor {
  return (LCPParseColorString([prefs objectForKey:@"grayText"], @"#000000"));
}
- (id)blue_balloonColors
{
  return @[(LCPParseColorString([prefs objectForKey:@"blueBalloon"], @"#007aff"))];
}
- (id)green_balloonColors
{
  return @[(LCPParseColorString([prefs objectForKey:@"greenBalloon"], @"#4bb33a"))];
}
-	(id)gray_balloonColors
{
  return @[(LCPParseColorString([prefs objectForKey:@"grayBalloon"], @"#e6e5eb"))];
}
-(UIColor *)appTintColor
{
	return (LCPParseColorString([prefs objectForKey:@"apptint"], @"#007aff"));
}
-(UIColor *)waveformUnplayedColor
{
	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#007aff"));
}
// -(UIColor *)waveformDisabledColor
// {
// 	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#007aff"));
// }
-(id)gray_waveformColor
{
	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#4bb33a"));
}
-(id)green_waveformColor
{
	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#4bb33a"));
}
-(id)blue_waveformColor
{
	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#007aff"));
}
-(id)green_sendButtonColor
{
	return (LCPParseColorString([prefs objectForKey:@"sendColor"], @"#4bb33a"));
}
-(id)blue_sendButtonColor
{
	return (LCPParseColorString([prefs objectForKey:@"sendColor"], @"#007aff"));
}
%end

%hook CKUIThemeLight
-(id)transcriptBackgroundColor
{ if ([[NSFileManager defaultManager] fileExistsAtPath:pathForImage]) {
  return [UIColor clearColor];
	} else {
		return %orig;
	}
}
-(UIColor *)entryFieldButtonColor
{
	return (LCPParseColorString([prefs objectForKey:@"plugincolor"], @"#868e99"));
}
- (id)blue_balloonTextColor {
  return (LCPParseColorString([prefs objectForKey:@"blueText"], @"#ffffff"));
}
- (id)green_balloonTextColor {
  return (LCPParseColorString([prefs objectForKey:@"greenText"], @"#ffffff"));
}
- (id)gray_balloonTextColor {
  return (LCPParseColorString([prefs objectForKey:@"grayText"], @"#000000"));
}
- (id)blue_balloonColors
{
  return @[(LCPParseColorString([prefs objectForKey:@"blueBalloon"], @"#007aff"))];
}
- (id)green_balloonColors
{
  return @[(LCPParseColorString([prefs objectForKey:@"greenBalloon"], @"#4bb33a"))];
}
-	(id)gray_balloonColors
{
  return @[(LCPParseColorString([prefs objectForKey:@"grayBalloon"], @"#e6e5eb"))];
}
-(UIColor *)appTintColor
{
	return (LCPParseColorString([prefs objectForKey:@"apptint"], @"#007aff"));
}
-(UIColor *)waveformUnplayedColor
{
	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#007aff"));
}
// -(UIColor *)waveformDisabledColor
// {
// 	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#007aff"));
// }
-(id)gray_waveformColor
{
	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#4bb33a"));
}
-(id)green_waveformColor
{
	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#4bb33a"));
}
-(id)blue_waveformColor
{
	return (LCPParseColorString([prefs objectForKey:@"waveform"], @"#007aff"));
}
-(id)green_sendButtonColor
{
	return (LCPParseColorString([prefs objectForKey:@"sendColor"], @"#4bb33a"));
}
-(id)blue_sendButtonColor
{
	return (LCPParseColorString([prefs objectForKey:@"sendColor"], @"#007aff"));
}
%end

%hook UIKeyboardEmojiGraphicsTraits
-(double)categoryHeaderHeight
{
	return EmojiHeader ? 0 : %orig;
}
-(double)minimunInteritemSpacing
{
	return EmojiSpacing ? 0 : %orig;
}
%end

%hook CKColoredBalloonView
-(BOOL)wantsGradient
{
	return BalloonGrad ? FALSE : %orig;
}
%end

%hook UIDevice
-(long long)_graphicsQuality
{
	return TransBack ? 10 : %orig;
}
%end

%hook _UIBackdropViewSettings
-(double)blurRadius
{
	return TransBack ? 0 : %orig;
}
-(double)grayscaleTintAlpha
{
	return TransBack ? 0 : %orig;
}
%end

%hook CKFullScreenAppNavbarManager
-(bool)_canShowAvatarView
{
	return ChatHead ? FALSE : %orig;
}
%end

%hook CKNavbarCanvasViewController
-(bool)_canShowAvatarView
{
	return ChatHead ? FALSE : %orig;
}
%end

%hook CKUIBehaviorPad
-(bool)canShowContactPhotosInConversationList
{
	return ChatHead ? FALSE : %orig;
}
%end

%hook CKUIBehavior
-(bool)canShowContactPhotosInConversationList
{
	return ChatHead ? FALSE : %orig;
}
%end

%hook CKBalloonView
-(void)setBalloonCorners:(unsigned long long)arg1
{
	return SquareBalloon ? %orig(0) : %orig;
}
%end

%hook CKConversation
-(bool)hasUnreadMessages
{
	return NewMessage ? FALSE : %orig;
}
-(id)name
{
	return ConvoNames ? name : %orig;
}
-(id)previewText
{
	return HidePreview ? previewText : %orig;
}
-(bool)_chatSupportsTypingIndicators
{
	return TypeIndicator ? NO : %orig;
}
%end

%hook UIProgressView
-(id)progressTintColor
{
		return (LCPParseColorString([prefs objectForKey:@"favoriteColor"], @"#007aff"));
}
%end

%hook CKMessagesController
-(bool)resumeToConversation:(id)arg1
{
	return OpenTo ? FALSE : %orig;
}
-(bool)shouldAutorotate
{
	return AutoRotate ? NO : %orig;
}
%end

%hook CKNotificationChatController
-(bool)pluginButtonsEnabled
{
	return PluginButtons ? NO : %orig;
}
%end

%hook CKChatController
-(bool)pluginButtonsEnabled
{
	return PluginButtons ? NO : %orig;
}
%end

%hook CKMessageEntryView
-(void)sendButtonLongPressGesture:(id)arg1
{
	return SendEffect ? %orig(nil) : %orig;
}
-(bool)shouldShowPluginButtons
{
	return PluginButtons ? NO : %orig;
}
-(bool)pluginButtonsEnabled
{
	return PluginButtons ? NO : %orig;
}
-(bool)shouldDisablePluginButtons
{
	return PluginButtons ? YES : %orig;
}
%end

%hook IMSendProgress
-(BOOL)startSendProgressImmediately
{
	return ProgressBar ? YES : %orig;
}
%end

%hook _UIBarBackground
-(void)configureBackgroundColor:(id)arg1 barStyle:(long long)arg2 translucent:(BOOL)arg3
{
	return ProgressBar ? %orig(arg1, arg2, YES) : %orig;
}
-(void)configureEffectForStyle:(long long)arg1 backgroundTintColor:(id)arg2 forceOpaque:(BOOL)arg3
{
	return %orig(arg1, (LCPParseColorString([prefs objectForKey:@"navColor"], @"%orig")), TRUE);
}
%end

%hook UIScrollView
-(void)_adjustScrollerIndicators:(BOOL)arg1 alwaysShowingThem:(BOOL)arg2
{
  return ProgressBar ?  %orig(arg1, NO) : %orig;
}
%end

%hook CKPhoneTranscriptMessageCell
-(void)setShowAvatarView:(BOOL)arg1 withContact:(id)arg2 preferredHandle:(id)arg3 avatarViewDelegate:(id)arg4
{
  return GroupAvatar ?  %orig(arg1, arg2, arg3, arg4) : %orig;
}
%end

static void loadPreferences() {

	{
    CFPreferencesAppSynchronize(CFSTR("com.harrywantstodev.bettermessages"));
    NSNumber *tempVal;

    tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("PluginButtons"), CFSTR("com.harrywantstodev.bettermessages"));
    PluginButtons = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("ProgressBar"), CFSTR("com.harrywantstodev.bettermessages"));
		ProgressBar = !tempVal ? YES : [tempVal boolValue];

    tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("AutoRotate"), CFSTR("com.harrywantstodev.bettermessages"));
    AutoRotate = !tempVal ? YES : [tempVal boolValue];

    tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("GroupAvatar"), CFSTR("com.harrywantstodev.bettermessages"));
    GroupAvatar = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("TypeIndicator"), CFSTR("com.harrywantstodev.bettermessages"));
		TypeIndicator = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("SquareBalloon"), CFSTR("com.harrywantstodev.bettermessages"));
		SquareBalloon = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("TransBack"), CFSTR("com.harrywantstodev.bettermessages"));
		TransBack = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("ChatHead"), CFSTR("com.harrywantstodev.bettermessages"));
		ChatHead = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("SendEffect"), CFSTR("com.harrywantstodev.bettermessages"));
		SendEffect = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("HidePreview"), CFSTR("com.harrywantstodev.bettermessages"));
		HidePreview = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("ConvoNames"), CFSTR("com.harrywantstodev.bettermessages"));
		ConvoNames = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("ColorBar"), CFSTR("com.harrywantstodev.bettermessages"));
		ColorBar = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("ColorSend"), CFSTR("com.harrywantstodev.bettermessages"));
		ColorSend = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("NewMessage"), CFSTR("com.harrywantstodev.bettermessages"));
		NewMessage = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("BalloonGrad"), CFSTR("com.harrywantstodev.bettermessages"));
		BalloonGrad = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("EmojiHeader"), CFSTR("com.harrywantstodev.bettermessages"));
		EmojiHeader = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("EmojiSpacing"), CFSTR("com.harrywantstodev.bettermessages"));
		EmojiSpacing = !tempVal ? YES : [tempVal boolValue];

		tempVal = (NSNumber *)CFPreferencesCopyAppValue(CFSTR("OpenTo"), CFSTR("com.harrywantstodev.bettermessages"));
		OpenTo = !tempVal ? YES : [tempVal boolValue];

		ProgressColour = LCPParseColorString([prefs objectForKey:@"favoriteColor"], @"#007aff");

		SendColor = LCPParseColorString([prefs objectForKey:@"SendColor"], @"#007aff");

		navColor = LCPParseColorString([prefs objectForKey:@"navColor"], @"#ffffff");

		blueBalloon = LCPParseColorString([prefs objectForKey:@"blueBalloon"], @"#007aff");

		greenBalloon = LCPParseColorString([prefs objectForKey:@"greenBalloon"], @"#4bb33a");

		grayBalloon = LCPParseColorString([prefs objectForKey:@"grayBalloon"], @"#e6e5eb");

		[tempVal release];

	}
}

%ctor {

    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(),
        NULL,
        (CFNotificationCallback)loadPreferences,
        CFSTR("com.harrywantstodev.bettermessages/settingschanged"),
        NULL,
        CFNotificationSuspensionBehaviorDeliverImmediately);
    loadPreferences();
  }
