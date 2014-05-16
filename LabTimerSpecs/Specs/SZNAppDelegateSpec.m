//
//  SZNAppDelegateSpec.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "Kiwi.h"
#import "SZNAppDelegate.h"
#import "SZNTimerViewController.h"

SPEC_BEGIN(SZNAppDelegateSpec)

describe(@"App delegate", ^{
    SZNAppDelegate *appDelegate = (id)[NSApplication sharedApplication].delegate;

    context(@"when it loads the main window", ^{
        it(@"should have an app delegate", ^{
            [[appDelegate should] beKindOfClass:SZNAppDelegate.class];
        });

        it(@"should contain the main controls", ^{
            NSView  *contentView = appDelegate.window.contentView;
            NSArray *views       = contentView.subviews;
            [[views should] haveCountOf:4];
        });

        it(@"should have the main text field", ^{
            [[appDelegate.timerViewController.titleTextField should] beKindOfClass:NSTextField.class];
        });
    });
});

SPEC_END