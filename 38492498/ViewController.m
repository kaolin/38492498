//
//  ViewController.m
//  38492498
//
//  Created by kaolin fire on 8/16/16.
//  Copyright © 2016 kaolin fire. All rights reserved.
//

#import "ViewController.h"
#import "PercentLayer.h"

@interface ViewController ()

@property (strong, nonatomic) PercentLayer* percentLayer;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.percentLayer = [[PercentLayer alloc] init];
	[self.view.layer addSublayer:self.percentLayer];
}

- (void)viewDidAppear:(BOOL)animated {
	self.percentLayer.percentScanned = 100;
	CABasicAnimation *a = [CABasicAnimation animationWithKeyPath:@"percentScanned"];
	[a setFromValue:@0];
	[a setDuration:5];
	[self.percentLayer addAnimation:a forKey:@"percentage"];
	[super viewDidAppear:animated];
}


@end
