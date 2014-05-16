//
//  SZNTimeValueTransformerSpec.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "Kiwi.h"

#import "SZNTimeValueTransformer.h"

SPEC_BEGIN(SZNTimeValueTransformerSpec)

describe(@"Time value transformer", ^{

    context(@"when given a time interval", ^{

        it(@"should format as a string", ^{
            SZNTimeValueTransformer *transformer = [SZNTimeValueTransformer new];
            NSString *string = [transformer transformedValue:@(100)];
            [[string should] equal:@"1:40"];
        });
    });
});

SPEC_END