//
//  SZNTimer.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "SZNTimer.h"

@implementation SZNTimer

+ (instancetype)timerWithTitle:(NSString *)title
                    identifier:(NSString *)identifier
           defaultTimeInterval:(NSTimeInterval)defaultTimeInterval
{
    SZNTimer *timer = [self.class new];
    timer.title               = title;
    timer.defaultTimeInterval = defaultTimeInterval;
    return timer;
}

@end
