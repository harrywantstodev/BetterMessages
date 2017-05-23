#import <Preferences/PSListController.h>
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>
// #import <GKClasses/GKCropBorderView.h>
// #import <GKClasses/GKImageCropOverlayView.h>
// #import <GKClasses/GKImageCropView.h>
// #import <GKClasses/GKImageCropViewController.h>
// #import <GKClasses/GKImagePicker.h>
// #import <GKClasses/GKResizeableCropOverlayView.h>


static NSString *bundleID;
static NSString *imgPath = @"/var/mobile/Documents/";
static NSString *usrCCImg = @"/var/mobile/Documents/bmessagesbg.png";
//static GKImagePicker *imagePicker = nil;
static UIImage *imagePicker = nil;
static NSString *fileName = @"bmessagesbg.png";

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
//@property (nonatomic, retain) GKImagePicker *imagePicker;
//@property (nonatomic, strong, readwrite) UIColor *textColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
@end

// UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
