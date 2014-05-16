//
//  SZNTimerSpec.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/16/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "Kiwi.h"
#import "SZNTimer.h"

SPEC_BEGIN(SZNTimerSpec)

describe(@"Timer", ^{

    context(@"when creating new timer", ^{

        it(@"should init its properties", ^{
            SZNTimer *timer = [SZNTimer timerWithTitle:@"Tim"
                                            identifier:@"tim"
                                   defaultTimeInterval:10];

            [[timer.title should] equal:@"Tim"];
            [[theValue(timer.defaultTimeInterval) should] equal:theValue(10)];
        });
    });

    context(@"when rewinding", ^{

        it(@"should reset its current time interval value", ^{
            SZNTimer *timer = [SZNTimer timerWithTitle:@"Tim"
                                            identifier:@"tim"
                                   defaultTimeInterval:10];
            timer.currentTimeInterval = 5;
            [timer rewind];

            [[theValue(timer.currentTimeInterval) should] equal:theValue(10)];
        });
    });
});

SPEC_END