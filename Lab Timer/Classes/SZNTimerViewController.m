//
//  SZNTimerViewController.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "SZNTimerViewController.h"

@interface SZNTimerViewController ()

@end

@implementation SZNTimerViewController

#pragma mark - Actions

- (IBAction)startTimer:(id)sender
{
    self.timeTextField.stringValue = @"99:99";
}

@end
