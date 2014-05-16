//
//  SZNAppDelegate.h
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

@import Cocoa;

@class SZNTimerViewController;

@interface SZNAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, weak, readonly) IBOutlet SZNTimerViewController *timerViewController;


@end
