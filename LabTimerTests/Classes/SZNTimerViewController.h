//
//  SZNTimerViewController.h
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

@import Cocoa;

@class SZNTimer;

@interface SZNTimerViewController : NSViewController <NSTextFieldDelegate>

@property (nonatomic, weak) IBOutlet NSTextField *timeTextField;
@property (nonatomic, weak) IBOutlet NSTextField *titleTextField;

@property (nonatomic, strong, readonly) SZNTimer *currentTimer;
@property (nonatomic, strong, readonly) NSTimer  *clock;

- (IBAction)startTimer:(id)sender;

- (void)setTimerTitle:(NSString *)title;
- (void)setTimerTitleWithTimeInterval:(NSTimeInterval)timeInterval;

- (void)clockTick:(id)sender;

@end
