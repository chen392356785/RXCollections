//  L3TestSuite.h
//  Created by Rob Rix on 2012-11-07.
//  Copyright (c) 2012 Rob Rix. All rights reserved.

#import <Foundation/Foundation.h>

@class L3TestCase;

@interface L3TestSuite : NSObject

+(instancetype)testSuiteWithName:(NSString *)name;

@property (copy, nonatomic, readonly) NSString *name;

@property (strong, nonatomic, readonly) NSMutableDictionary *testCasesByName;

// must not have the same name as another case already in the suite
-(void)addTestCase:(L3TestCase *)testCase;

@property (assign, nonatomic) L3TestCaseSetUpFunction setUpFunction;
@property (assign, nonatomic) L3TestCaseTearDownFunction tearDownFunction;
//-(void)addSetUpFunction:(L3TestCaseSetUpFunction)function;
//-(void)addTearDownFunction:(L3TestCaseTearDownFunction)function;

-(void)runTestCase:(L3TestCase *)testCase;
-(void)runTestCases;

@end
