//
//  OC_TestbedTests.m
//  OC-TestbedTests
//
//  Created by Mark Fearnley on 21/10/2016.
//  Copyright © 2016 Atos. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CapitalizeManager.h"

@interface OC_TestbedTests : XCTestCase

@end

@implementation OC_TestbedTests

CapitalizeManager *manager;

- (void)setUp {
    [super setUp];
    
    manager = [[CapitalizeManager alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCapitalizeString {
    NSString *result = [manager capitalizeString:@"Test String"];
    
    XCTAssertEqualObjects(result, @"TEST STRING");
}

@end
