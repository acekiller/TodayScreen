//
//  WidgetRSSSettings.m
//  TodayScreen
//
//  Created by Shravan Reddy on 5/30/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "WidgetRSSSettings.h"

@implementation WidgetRSSSettings

- (id)initWithWidget:(WidgetRSS*)widget {
    if (self = [super init]) {
		rssWidget = widget;
		[rssWidget retain];
    }
    return self;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.title = @"RSS Settings";
}

- (void)saveAction:(id)sender {
	[rssWidget setRssFeed:rssField.text];
	[rssWidget setNUM_OF_FEEDS:(NSInteger)numFeedsField.text];
	[rssWidget resetStories];
	[rssWidget viewDidLoad];
	
	[super saveAction:sender];
}


- (void)dealloc {
	[rssWidget release];
    [super dealloc];
}


@end