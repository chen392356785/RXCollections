//  L3AssertionReference.m
//  Created by Rob Rix on 2012-11-11.
//  Copyright (c) 2012 Rob Rix. All rights reserved.

#import "L3AssertionReference.h"

@implementation L3AssertionReference

#pragma mark -
#pragma mark Constructors

+(instancetype)assertionWithFile:(NSString *)file line:(NSUInteger)line subjectSource:(NSString *)subjectSource patternSource:(NSString *)patternSource {
	return [[self alloc] initWithFile:file line:line subjectSource:subjectSource patternSource:patternSource];
}

-(instancetype)initWithFile:(NSString *)file line:(NSUInteger)line subjectSource:(NSString *)subjectSource patternSource:(NSString *)patternSource {
	if ((self = [super init])) {
		_file = [file copy];
		_line = line;
		_subjectSource = [subjectSource copy];
		_patternSource = [patternSource copy];
	}
	return self;
}


#pragma mark -
#pragma mark NSCopying

-(id)copyWithZone:(NSZone *)zone {
	return self;
}

@end
