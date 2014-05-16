//
//  SZNTimerViewController.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "SZNTimerViewController.h"

#import "SZNTimer.h"

@interface SZNTimerViewController ()

@property (nonatomic, strong, readwrite) SZNTimer *currentTimer;
@property (nonatomic, strong, readwrite) NSTimer  *clock;

@end

@implementation SZNTimerViewController

#pragma mark - Actions

- (IBAction)startTimer:(id)sender
{
    const NSTimeInterval defaultTimeInterval = 100;

    if (!self.currentTimer) {
        self.currentTimer = [SZNTimer timerWithTitle:self.titleTextField.stringValue
                                          identifier:nil
                                 defaultTimeInterval:defaultTimeInterval];
        self.currentTimer.currentTimeInterval = self.currentTimer.defaultTimeInterval;
    }

    self.clock = [NSTimer scheduledTimerWithTimeInterval:1
                                                  target:self
                                                selector:@selector(clockTick:)
                                                userInfo:nil
                                                 repeats:YES];

    [self setTimerTitleWithTimeInterval:self.currentTimer.currentTimeInterval];
}

- (void)setTimerTitle:(NSString *)title
{
    self.timeTextField.stringValue = title;
}

- (void)setTimerTitleWithTimeInterval:(NSTimeInterval)timeInterval
{
    NSString *title = [NSString stringWithFormat:@"%lu:%02lu",
                        (NSUInteger)timeInterval/60,
                        (NSUInteger)timeInterval%60];
    [self setTimerTitle:title];
}

#pragma mark - Clock

- (void)clockTick:(id)sender
{
    self.currentTimer.currentTimeInterval = self.currentTimer.currentTimeInterval - 1;
    [self setTimerTitleWithTimeInterval:self.currentTimer.currentTimeInterval];
}

@end
