//
//  Singleton.m
//  SingletonInSwift
//
//  Created by dr2050 on 6/9/16.
//  Copyright © 2016 Confusion Studios LLC. All rights reserved.
//
#import "Singleton.h"

@implementation Singleton

static Singleton *instance;

+ (Singleton *)instance {
	return instance;
}

+ (id)hiddenAlloc {
	return [super alloc];
}

+ (id)alloc {
	return [self instance];
}

+ (void)initialize {
	static BOOL initialized = NO;
	if (!initialized) {
		initialized = YES;
		instance = [[self hiddenAlloc] init];
	}
}

@end