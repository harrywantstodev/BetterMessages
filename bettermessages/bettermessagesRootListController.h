//#import <Preferences/PSListController.h>
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>

static NSString *bundleID;
static NSString *imgPath = @"/var/mobile/Documents/";
static NSString *usrCCImg = @"/var/mobile/Documents/bmessagesbg.png";
static UIImage *imagePicker = nil;
static NSString *fileName = @"bmessagesbg.png";

#define TEXT_TINTCOLOR [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0]
#define TABLE_TINTCOLOR [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0]
#define SELECTION_TINTCOLOR [UIColor [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0]

@interface UIApplication (DM)
- (BOOL)isSuspended;
- (void)terminateWithSuccess;
@end

@interface SBApplication : NSObject
@end

@interface SBApplicationController : NSObject
+ (id)sharedInstance;
- (id)applicationWithBundleIdentifier:(id)arg1;
- (void)applicationService:(id)arg1 suspendApplicationWithBundleIdentifier:(id)arg2;
@end

@interface bettermessagesRootListController : PSListController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
}
@end

@interface UIImage (Addition)
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)

@interface UITableViewCell (BarFade)
-(void)setSelectionTintColor:(UIColor*)arg1;
@end

// @interface PSViewController : UIViewController
// -(void)setPreferenceValue:(id)arg1 specifier:(id)arg2 ;
// @end

@interface UIPreferencesTable
@end

// @interface PSListController : PSViewController {
//         NSMutableArray* _specifiers;
//         UIPreferencesTable* _table;
//         UIColor* _buttonTextColor;
// }
// //@property (nonatomic,retain) UIColor * buttonTextColor;
// -(void)loadView;
// -(id)loadSpecifiersFromPlistName:(id)arg1 target:(id)arg2 ;
// -(void)reloadSpecifier:(id)arg1 ;
// -(id)specifierForID:(id)arg1 ;
// - (id)table;
// -(void)reload;
// -(void)reloadSpecifiers;
// - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
// -(void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2 ;
// @end

@interface PSSpecifier : NSObject {
        NSMutableDictionary* _properties;
}
+ (id)preferenceSpecifierNamed:(id)arg1 target:(id)arg2 set:(SEL)arg3 get:(SEL)arg4 detail:(id)arg5 cell:(id)arg6 edit:(int)arg7;
-(void)setProperty:(id)property forKey:(NSString*)key;
-(id)identifier;
-(void)setIdentifier:(id)arg1 ;
-(id)properties;
@end

// @interface PSTableCell : UITableViewCell
// -(id)initWithStyle:(int)arg1 reuseIdentifier:(id)arg2 specifier:(id)arg3 ;
// +(id)cellTypeFromString:arg1;
// -(void)setAlignment:(int)arg1;
// -(void)setType:(long long)arg1;
// @end

@interface PSSwitchTableCell
-(id)initWithStyle:(int)arg1 reuseIdentifier:(id)arg2 specifier:(id)arg3;
-(id)control;
@end
