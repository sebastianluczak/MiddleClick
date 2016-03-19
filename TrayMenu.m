//
//  TrayMenu.m
//
//  Created by Clem on 21.06.09.
//

#import "TrayMenu.h"
#import "Controller.h"

@implementation TrayMenu

- (id)initWithController:(Controller *)ctrl
{
	[super init];
	myController = ctrl;
	return self;
}
	

- (void) openWebsite:(id)sender {
	NSURL *url = [NSURL URLWithString:@"http://clement.beffa.org/labs/projects/middleclick/"];
	[[NSWorkspace sharedWorkspace] openURL:url];
	//[url release];
}

- (void)setClick:(id)sender
{
	[myController setMode:YES];
	[self setChecks];
}

- (void)setTap:(id)sender
{
	[myController setMode:NO];
	[self setChecks];
}

- (void)setChecks
{
	if([myController getClickMode])
	{
		[clickItem setState:NSOnState];
		[tapItem setState:NSOffState];
	}
	else {
		[clickItem setState:NSOffState];
		[tapItem setState:NSOnState];
	}
}

- (void) openFinder:(id)sender {
	[[NSWorkspace sharedWorkspace] launchApplication:@"Finder"];
}

- (void) actionQuit:(id)sender {
	[NSApp terminate:sender];
}

- (void) applicationDidFinishLaunching:(NSNotification *)notification {

}

@end