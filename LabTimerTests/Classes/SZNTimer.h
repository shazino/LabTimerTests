//
//  SZNTimer.h
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

@import Foundation;

@interface SZNTimer : NSObject

@property (nonatomic, copy)   NSString       *title;
@property (nonatomic, copy)   NSString       *identifier;
@property (nonatomic, assign) NSTimeInterval  defaultTimeInterval;
@property (nonatomic, assign) NSTimeInterval  currentTimeInterval;

+ (instancetype)timerWithTitle:(NSString *)title
                    identifier:(NSString *)identifier
           defaultTimeInterval:(NSTimeInterval)defaultTimeInterval;

@end
