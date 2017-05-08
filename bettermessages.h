#import <libcolorpicker.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIView.h>
#import "QuartzCore/QuartzCore.h"
// #import <QuartzCore/QuartzCore.h>
//#import <CKUITheme.h>
//#import <PFColorViewController.h>

@interface CKTranscriptCollectionView : UIViewController {

}
@property(nonatomic, strong) UIView *backgroundView;
@end

@interface CKUITheme : NSObject
@end

@interface UIImage (Addition)
+ (UIImage *)kitImageNamed:(NSString *)name;
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
+ (UIImage *)pu_PhotosUIImageNamed:(NSString *)name;
- (UIImage *)_flatImageWithColor:(UIColor *)color;
@end

@interface CKUIThemeLight : CKUITheme
- (UIColor *)entryFieldButtonColor;
- (UIColor *)entryFieldDarkStyleButtonColor;
- (id)blue_balloonColors;
- (id)green_balloonColors;
- (id)gray_balloonColors;
-	(id)blue_sendButtonColor;
-	(id)green_sendButtonColor;
-	(id)green_waveformColor;
-	(id)blue_waveformColor;
- (id)green_balloonTextColor;
- (id)gray_balloonTextColor;
- (id)blue_balloonTextColor;
-	(UIColor *)appTintColor;
-	(UIColor *)waveformUnplayedColor;
-(id)transcriptBackgroundColor;
@end

@interface CKUIThemeDark : CKUITheme
- (UIColor *)entryFieldButtonColor;
- (UIColor *)entryFieldDarkStyleButtonColor;
- (id)blue_balloonColors;
- (id)green_balloonColors;
- (id)gray_balloonColors;
-	(id)blue_sendButtonColor;
-	(id)green_sendButtonColor;
-	(id)green_waveformColor;
-	(id)blue_waveformColor;
- (id)green_balloonTextColor;
- (id)gray_balloonTextColor;
- (id)blue_balloonTextColor;
-	(UIColor *)appTintColor;
-	(UIColor *)waveformUnplayedColor;
-(id)transcriptBackgroundColor;
@end

#define plist @"/var/mobile/Library/Preferences/com.harrywantstodev.bettermessages.plist"
#define customImgPath @"/var/mobile/Documents/bmessagesbg.png"

NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:plist];
//static NSString *const kBetterMessages = @"/var/mobile/Library/Preferences/com.harrywantstodev.bettermessages.plist";
//static NSMutableDictionary *settings;

static BOOL AutoRotate = NO;
static BOOL ProgressBar = NO;
static BOOL PluginButtons = NO;
static BOOL GroupAvatar = NO;
static BOOL TypeIndicator = NO;
static BOOL SquareBalloon = NO;
static BOOL ChatHead = NO;
static BOOL TransBack = NO;
static BOOL SendEffect = NO;
static BOOL ConvoNames = NO;
static BOOL HidePreview = NO;
static BOOL ColorBar = NO;
static BOOL ColorSend = NO;
static BOOL NewMessage = NO;
static BOOL BalloonGrad = NO;
static BOOL EmojiHeader = NO;
static BOOL EmojiSpacing = NO;
static BOOL OpenTo = NO;

UIColor *ProgressColour;
UIColor *SendColor;
UIColor *navColor;
UIColor *blueBalloon;
UIColor *greenBalloon;
UIColor *grayBalloon;
UIColor *blueText;
UIColor *greenText;
UIColor *grayText;
UIColor *plugincolor;
UIColor *backgroundcolor;



NSString *name = @"";
NSString *previewText = @"";
static NSString *imgPath = @"/var/mobile/Documents/";
static NSString *usrCCImg = @"/var/mobile/Documents/bmessagesbg.png";
NSString *pathForImage = [imgPath stringByAppendingPathComponent:@"bmessagesbg.png"];

UIImage *img;
