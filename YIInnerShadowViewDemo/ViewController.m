//
//  ViewController.m
//  YIInnerShadowViewDemo
//
//  Created by Yasuhiro Inami on 2012/10/14.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import "ViewController.h"
#import "YIInnerShadowView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // access directly to innerShadowLayer if you want to change its properties
    YIInnerShadowView* innerShadowView = (id)self.view.subviews[0];
    innerShadowView.innerShadowLayer.shadowRadius = 20;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
