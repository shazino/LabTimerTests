//
//  SZNTimeValueTransformer.m
//  LabTimerTests
//
//  Created by Vincent Tourraine on 5/16/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "SZNTimeValueTransformer.h"

@implementation SZNTimeValueTransformer

+ (Class)transformedValueClass
{
    return NSString.class;
}

- (id)transformedValue:(id)value
{
    if (![value isKindOfClass:NSNumber.class]) {
        return nil;
    }

    NSTimeInterval timeInterval = [value doubleValue];
    return [NSString stringWithFormat:@"%lu:%02lu",
            (NSUInteger)timeInterval/60,
            (NSUInteger)timeInterval%60];
}

@end
