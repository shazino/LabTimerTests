//
//  SZNTimerViewControllerSpec.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "Kiwi.h"
#import "SZNTimerViewController.h"

SPEC_BEGIN(SZNTimerViewControllerSpec)

describe(@"Timer view controller", ^{
    __block SZNTimerViewController *viewController;

    beforeEach(^{
        viewController = [[SZNTimerViewController alloc] init];
    });

    context(@"when start button pushed", ^{

        it(@"should update the label", ^{
            NSTextField *textField = [[NSTextField alloc] init];
            viewController.timeTextField = textField;

            [viewController startTimer:nil];
            [[viewController.timeTextField.stringValue should] equal:@"99:99"];
        });
    });
});

SPEC_END