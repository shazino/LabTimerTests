//
//  SZNTimerViewControllerSpec.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "Kiwi.h"

#import "SZNTimer.h"
#import "SZNTimerViewController.h"

@interface SZNTimerViewController ()
@property (nonatomic, strong, readwrite) SZNTimer *currentTimer;
@end

SPEC_BEGIN(SZNTimerViewControllerSpec)

describe(@"Timer view controller", ^{
    __block SZNTimerViewController *viewController;

    beforeEach(^{
        viewController = [[SZNTimerViewController alloc] init];
    });

    context(@"when start button pushed", ^{

        it(@"should create the timer", ^{
            [[viewController.clock should] beNil];
            [viewController startTimer:nil];
            NSTimer *timer = viewController.clock;
            [[timer should] beNonNil];
            [[theValue(timer.timeInterval) should] equal:theValue(1)];
        });
    });
    
    context(@"when the clock ticks", ^{
        it(@"should decrement the time", ^{
            viewController.currentTimer = [SZNTimer timerWithTitle:nil
                                                        identifier:nil
                                               defaultTimeInterval:0];
            viewController.currentTimer.currentTimeInterval = 10;

            [viewController clockTick:nil];

            [[theValue(viewController.currentTimer.currentTimeInterval) should] equal:theValue(9)];
        });
    });
});

SPEC_END