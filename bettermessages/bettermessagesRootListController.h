#import <Preferences/PSListController.h>
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>
#import <GKClasses/GKCropBorderView.h>
#import <GKClasses/GKImageCropOverlayView.h>
#import <GKClasses/GKImageCropView.h>
#import <GKClasses/GKImageCropViewController.h>
#import <GKClasses/GKImagePicker.h>
#import <GKClasses/GKResizeableCropOverlayView.h>


static NSString *bundleID;
static NSString *imgPath = @"/var/mobile/Documents/";
static NSString *usrCCImg = @"/var/mobile/Documents/bmessagesbg.png";
static GKImagePicker *imagePicker = nil;

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

@interface bettermessagesRootListController : PSListController <GKImagePickerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
}
@property (nonatomic, retain) GKImagePicker *imagePicker;
@end

// UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
