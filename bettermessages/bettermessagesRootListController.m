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

	UIImage *icon = [UIImage imageNamed:@"icon.png" inBundle:self.bundle];
	self.navigationItem.titleView = [[UIImageView alloc] initWithImage:icon];

	UIImage *birdImage = [UIImage imageNamed:@"twitter.png" inBundle:self.bundle];
	UIBarButtonItem *birdButton = [[UIBarButtonItem alloc] initWithImage:birdImage style:UIBarButtonItemStylePlain target:self action:@selector(tweetSP:)];
	birdButton.imageInsets = (UIEdgeInsets){2, 0, 0, 0};
	[self.navigationItem setRightBarButtonItem:birdButton];

	[UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
		self.view.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
		self.navigationController.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];

  	[UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

    self.view.tintColor = nil;
		self.navigationController.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];



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


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
        if([cell.textLabel.text isEqualToString:@"Apply Changes"]) {
                cell.indentationLevel = 1;
                cell.textLabel.textColor = TEXT_TINTCOLOR;
        }
        return cell;
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
- (void)loadView {
	[super loadView];

	UIImage *credits = [UIImage imageNamed:@"credits.png" inBundle:self.bundle];
	self.navigationItem.titleView = [[UIImageView alloc] initWithImage:credits];

	UIImage *birdImage = [UIImage imageNamed:@"twitter.png" inBundle:self.bundle];
	UIBarButtonItem *birdButton = [[UIBarButtonItem alloc] initWithImage:birdImage style:UIBarButtonItemStylePlain target:self action:@selector(tweetSP:)];
	birdButton.imageInsets = (UIEdgeInsets){2, 0, 0, 0};
	[self.navigationItem setRightBarButtonItem:birdButton];

	[UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
		self.view.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
		self.navigationController.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];

  	[UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

    self.view.tintColor = nil;
		self.navigationController.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];



}

- (void)tweetSP:(id)sender {
	TWTweetComposeViewController *tweetController = [[TWTweetComposeViewController alloc] init];
    [tweetController setInitialText:@"I'm using #BetterMessages by @eta_son to make messages great again!"];
  //  [tweetController addImage:[UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/Faces.bundle/mockup.png"]];
    [self.navigationController presentViewController:tweetController animated:YES completion:nil];
    [tweetController release];
}


@end

@interface Hide : HBListController {
}
-(id)specifiers;
@end

@implementation Hide
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Hide" target:self] retain];
	}
	return _specifiers;
}
- (void)loadView {
	[super loadView];

	UIImage *hide = [UIImage imageNamed:@"hide.png" inBundle:self.bundle];
	self.navigationItem.titleView = [[UIImageView alloc] initWithImage:hide];

	UIImage *birdImage = [UIImage imageNamed:@"twitter.png" inBundle:self.bundle];
	UIBarButtonItem *birdButton = [[UIBarButtonItem alloc] initWithImage:birdImage style:UIBarButtonItemStylePlain target:self action:@selector(tweetSP:)];
	birdButton.imageInsets = (UIEdgeInsets){2, 0, 0, 0};
	[self.navigationItem setRightBarButtonItem:birdButton];

	[UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
self.view.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
  [UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
	self.navigationController.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
  self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
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
@end

@interface Misc : HBListController {
}
-(id)specifiers;
@end

@implementation Misc
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Misc" target:self] retain];
	}
	return _specifiers;
}
- (void)loadView {
	[super loadView];

	UIImage *Misc = [UIImage imageNamed:@"Misc.png" inBundle:self.bundle];
	self.navigationItem.titleView = [[UIImageView alloc] initWithImage:Misc];

	UIImage *birdImage = [UIImage imageNamed:@"twitter.png" inBundle:self.bundle];
	UIBarButtonItem *birdButton = [[UIBarButtonItem alloc] initWithImage:birdImage style:UIBarButtonItemStylePlain target:self action:@selector(tweetSP:)];
	birdButton.imageInsets = (UIEdgeInsets){2, 0, 0, 0};
	[self.navigationItem setRightBarButtonItem:birdButton];

	[UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
self.view.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
  [UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
	self.navigationController.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
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
@end

@interface Theme : HBListController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
}
-(id)specifiers;
@end

@implementation Theme
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Theme" target:self] retain];
	}
	return _specifiers;
}
- (void)loadView {
	[super loadView];

	UIImage *theme = [UIImage imageNamed:@"theme.png" inBundle:self.bundle];
	self.navigationItem.titleView = [[UIImageView alloc] initWithImage:theme];

	UIImage *birdImage = [UIImage imageNamed:@"twitter.png" inBundle:self.bundle];
	UIBarButtonItem *birdButton = [[UIBarButtonItem alloc] initWithImage:birdImage style:UIBarButtonItemStylePlain target:self action:@selector(tweetSP:)];
	birdButton.imageInsets = (UIEdgeInsets){2, 0, 0, 0};
	[self.navigationItem setRightBarButtonItem:birdButton];

	[UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
self.view.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
  [UISwitch appearanceWhenContainedIn:self.class, nil].onTintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
	self.navigationController.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.99 green:0.65 blue:0.02 alpha:1.0];
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
-(void)PickerImage {

    NSString *pathForImage = [imgPath stringByAppendingPathComponent:@"bmessagesbg.png"];

    if (![[NSFileManager defaultManager] fileExistsAtPath:pathForImage]) {

			//
			// self.imagePicker = [[GKImagePicker alloc] init];
			// self.imagePicker.cropSize = CGSizeMake(320, 320);
			// self.imagePicker.delegate = self;
			// self.imagePicker.resizeableCropArea = YES;
			//
 		// 	[self presentModalViewController:self.imagePicker.imagePickerController animated:YES];


        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
				imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        imagePicker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
        imagePicker.delegate = self;
        imagePicker.allowsEditing = NO;
        [self presentViewController:imagePicker animated:YES completion:nil];
    }

    else {

			UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
			imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
			imagePicker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
			imagePicker.delegate = self;
			imagePicker.allowsEditing = NO;
			[self presentViewController:imagePicker animated:YES completion:nil];

			// self.imagePicker = [[GKImagePicker alloc] init];
			// self.imagePicker.cropSize = CGSizeMake(320, 320);
			// self.imagePicker.delegate = self;
			// self.imagePicker.resizeableCropArea = YES;
			//
			// [self presentModalViewController:self.imagePicker.imagePickerController animated:YES];


    }
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
// - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{

    UIImage *picture = [info objectForKey:UIImagePickerControllerOriginalImage];
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
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
        if([cell.textLabel.text isEqualToString:@"Choose a Background"]) {
                cell.indentationLevel = 1;
                cell.textLabel.textColor = TEXT_TINTCOLOR;
        }
        return cell;
}
// -(void)removeImage
// {
// 	NSFileManager* fileManager = [NSFileManager defaultManager];
// 	NSURL* url = [[fileManager URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask] lastObject];
// 	NSString* directory = [url path];
// 	NSString* filePath = [directory stringByAppendingPathComponent:@"bmessagesbg.png"];
// 	if ([fileManager fileExistsAtPath:filePath])
// 		{
//     	[fileManager removeItemAtPath:filePath error:nil];
// 		}
// }
//
// NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
// NSString *dir = [paths objectAtIndex:0];
// NSString *path = [dir stringByAppendingPathComponent:@"bmessagesbg.png"];
// NSData *dataToWrite = UIImagePNGRepresentation(picture);
// [dataToWrite writeToFile:path atomically:YES];

// UIImage *picture = [info objectForKey:UIImagePickerControllerEditedImage];
// NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
// NSString *dir = [paths objectAtIndex:0];
// NSString *path = [dir stringByAppendingPathComponent:@"bmessagesbg.png"];
//  NSData *dataToWrite = UIImagePNGRepresentation(picture);
@end
