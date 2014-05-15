//
//  SZNTimerViewControllerTests.m
//  Lab Timer
//
//  Created by Vincent Tourraine on 5/15/14.
//  Copyright (c) 2014 shazino. All rights reserved.
//

@import XCTest;

#import "SZNTimerViewController.h"

@interface SZNTimerViewControllerTests : XCTestCase

@end

@implementation SZNTimerViewControllerTests

- (void)testStartTimer
{
    SZNTimerViewController *viewController = [[SZNTimerViewController alloc] init];
    NSTextField *textField = [[NSTextField alloc] init];
    viewController.timeTextField = textField;

    [viewController startTimer:nil];
    XCTAssertEqualObjects(viewController.timeTextField.stringValue, @"99:99",
                          @"Incorrect time text field at start");
}

@end
