//
//  SZNAppDelegateSpec.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "SZNAppDelegate.h"
#import "Kiwi.h"

SPEC_BEGIN(SZNAppDelegateSpec)

describe(@"SZNAppDelegateSpec", ^{
    __block SZNAppDelegate *dm;

    beforeEach(^{
        dm = [[SZNAppDelegate alloc] init];
    });

    context(@"application:DidFinishLaunching:", ^{

        it(@"should call call", ^{
            [[dm should] receive:@selector(firstCall)];

            [dm applicationDidFinishLaunching:nil];
        });

        it(@"should call otherCall", ^{
            [[dm should] receive:@selector(otherCall)];

            [dm applicationDidFinishLaunching:nil];
        });
    });
});

SPEC_END