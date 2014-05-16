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

        it(@"should have the main text field binded", ^{
            NSTextField *textField = appDelegate.timerViewController.timeTextField;
            [[textField should] beKindOfClass:NSTextField.class];

            NSDictionary *info = [textField infoForBinding:NSValueBinding];
            [[info[NSObservedKeyPathKey] should] equal:@"selection.currentTimeInterval"];

            NSDictionary *options = info[NSOptionsKey];
            [[options[NSValueTransformerNameBindingOption] should] equal:@"SZNTimeValueTransformer"];
        });
    });
});

SPEC_END