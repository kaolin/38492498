//
//  PercentLayer.m
//  38492498
//
//  Created by kaolin fire on 8/16/16.
//  Copyright © 2016 kaolin fire. All rights reserved.
//

#import "PercentLayer.h"
#import <UIKit/UIKit.h>

@interface PercentLayer()

@property (strong, nonatomic) CATextLayer *percentTextLayer;

@end

@implementation PercentLayer

+ (BOOL)needsDisplayForKey:(NSString *)key
{
	if ([@"percentScanned" isEqualToString:key])
	{
		return YES;
	}
	return [super needsDisplayForKey:key];
}

- (void)display
{
	_percentTextLayer.string = [NSString stringWithFormat:@"%02d%%",[[self presentationLayer] percentScanned]];
}

-(id) init {
	self = [super init];
	if (self)
	{
		_percentTextLayer = [[CATextLayer alloc] init];
		_percentTextLayer.frame = CGRectMake(20,20,200,200);
		_percentTextLayer.string = @"HELLO WORLD";
		[self addSublayer:_percentTextLayer];
		self.backgroundColor = [UIColor redColor].CGColor;
		_percentTextLayer.backgroundColor = [UIColor blueColor].CGColor;
	}
	return self;
}

@end
