//
//  SZNAppDelegateSpec.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

#import "Kiwi.h"
#import "SZNAppDelegate.h"

SPEC_BEGIN(SZNAppDelegateSpec)

describe(@"SZNAppDelegateSpec", ^{
    __block SZNAppDelegate *appDelegate;

    beforeEach(^{
        appDelegate = [[SZNAppDelegate alloc] init];
    });

//    context(@"application:DidFinishLaunching:", ^{
//
//        it(@"should call call", ^{
//            [[appDelegate should] receive:@selector(firstCall)];
//
//            [appDelegate applicationDidFinishLaunching:nil];
//        });
//
//        it(@"should call otherCall", ^{
//            [[appDelegate should] receive:@selector(otherCall)];
//
//            [appDelegate applicationDidFinishLaunching:nil];
//        });
//    });
});

SPEC_END