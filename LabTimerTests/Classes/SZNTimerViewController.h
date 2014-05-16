//
//  SZNTimerViewController.h
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

@import Cocoa;

@interface SZNTimerViewController : NSViewController <NSTextFieldDelegate>

@property (nonatomic, weak) IBOutlet NSTextField *timeTextField;
@property (nonatomic, weak) IBOutlet NSTextField *titleTextField;

- (IBAction)startTimer:(id)sender;

- (void)setTimerTitle:(NSString *)title;

@end
