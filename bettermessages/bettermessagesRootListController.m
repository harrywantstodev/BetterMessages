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

   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://paypal.me/cybersmith1"]];
}

-(void)charity {

   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.paypal.com/fundraiser/charity/1354900"]];
}
-(void)github {

   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/harrywantstodev/BetterMessages"]];
}
@end
