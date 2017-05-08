#include "bettermessagesRootListController.h"
#import <Twitter/TWTweetComposeViewController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <spawn.h>



@implementation bettermessagesRootListController

// + (NSString *)hb_specifierPlist {
// 	return @"Root";
// }

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)loadView {
	[super loadView];
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(tweetSP:)];
	// [UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor cyanColor];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    // self.view.tintColor = [UIColor cyanColor];
    // self.navigationController.navigationBar.tintColor = [UIColor cyanColor];
    // [UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor cyanColor];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

    self.view.tintColor = nil;
    self.navigationController.navigationBar.tintColor = nil;

}
- (void)tweetSP:(id)sender {
	TWTweetComposeViewController *tweetController = [[TWTweetComposeViewController alloc] init];
    [tweetController setInitialText:@"I'm using #BetterMessages by @eta_son to make messages great again!"];
  //  [tweetController addImage:[UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/Faces.bundle/mockup.png"]];
    [self.navigationController presentViewController:tweetController animated:YES completion:nil];
    [tweetController release];
}
-(void)respring {
         system("killall -9 SpringBoard");
      }
-(void)reopen {
	pid_t pid;
		const char* args[] = { "killall", "-HUP", "MobileSMS", NULL };
			posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
	}
- (void)twitter {
			NSString *user = @"eta_son";
	if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot:"]])
			[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"tweetbot:///user_profile/" stringByAppendingString:user]]];

	else if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitterrific:"]])
			[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"twitterrific:///profile?screen_name=" stringByAppendingString:user]]];

	else if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetings:"]])
			[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"tweetings:///user?screen_name=" stringByAppendingString:user]]];

	else if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter:"]])
			[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"twitter://user?screen_name=" stringByAppendingString:user]]];

	else
			[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"https://mobile.twitter.com/" stringByAppendingString:user]]];
}

+ (GKImagePicker *)picker
{
  imagePicker = [[GKImagePicker alloc] init];
  return imagePicker;
}

// - (void)imagePicker:(GKImagePicker *)imagePicker {
-(void)PickerImage {

    NSString *pathForImage = [imgPath stringByAppendingPathComponent:@"bmessagesbg.png"];

    if (![[NSFileManager defaultManager] fileExistsAtPath:pathForImage]) {


			self.imagePicker = [[GKImagePicker alloc] init];
			self.imagePicker.cropSize = CGSizeMake(320, 320);
			self.imagePicker.delegate = self;
			self.imagePicker.resizeableCropArea = YES;

 			[self presentModalViewController:self.imagePicker.imagePickerController animated:YES];

        // UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        // imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        // imagePicker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
        // imagePicker.delegate = self;
        // imagePicker.allowsEditing = YES;
        // [self presentViewController:imagePicker animated:YES completion:nil];
    }

    else {

			// UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
			// imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
			// imagePicker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
			// imagePicker.delegate = self;
			// imagePicker.allowsEditing = YES;
			// [self presentViewController:imagePicker animated:YES completion:nil];

			self.imagePicker = [[GKImagePicker alloc] init];
			self.imagePicker.cropSize = CGSizeMake(320, 320);
			self.imagePicker.delegate = self;
			self.imagePicker.resizeableCropArea = YES;

			[self presentModalViewController:self.imagePicker.imagePickerController animated:YES];


    }
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
// - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{

    UIImage *picture = [info objectForKey:UIImagePickerControllerEditedImage];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dir = [paths objectAtIndex:0];
    NSString *path = [dir stringByAppendingPathComponent:@"bmessagesbg.png"];
     NSData *dataToWrite = UIImagePNGRepresentation(picture);
     [dataToWrite writeToFile:path atomically:YES];

    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Custom Background Image"
                                                       message:@"Error while saving the image! Try Again!"
                                                      delegate:nil
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
        [alert show];
        [alert release];

		//Force the file to write to the path we specified even if it throws an error!
		//Using this method
		[[NSFileManager defaultManager] createFileAtPath:dir contents:nil attributes:nil];


     [self dismissViewControllerAnimated:YES completion:nil];
    }

    else if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        UIAlertView *alertUser = [[UIAlertView alloc] initWithTitle:@"Custom Background Image"
			message:@"Success the image has been saved!"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        [alertUser show];
        [alertUser release];



    [imagePicker release];
   [self dismissViewControllerAnimated:YES completion:nil];


    }

    else if (picture == nil) {

        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error!"
                                                        message:@"There was an error while retrieving the image!"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [error show];
        [error release];

    }

	else {

    [self dismissViewControllerAnimated:YES completion:nil];
    [imagePicker release];

}
}
@end

@interface Credits : HBListController {
}
-(id)specifiers;
@end

@implementation Credits
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Credits" target:self] retain];
	}
	return _specifiers;
}
-(void)paypal {

   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://paypal.me/cybersmith1"]];
}

-(void)charity {

   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.paypal.com/fundraiser/charity/1354900"]];
}
-(void)github {

   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/harrywantstodev/BetterMessages"]];
}
@end
