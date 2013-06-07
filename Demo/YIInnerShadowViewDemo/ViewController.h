//
//  ViewController.h
//  YIInnerShadowViewDemo
//
//  Created by Yasuhiro Inami on 2012/10/14.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)handleSegmentedControl:(UISegmentedControl*)sender;

- (IBAction)handleShadowRadiusSlider:(UISlider*)sender;
- (IBAction)handleCornerRadiusSlider:(UISlider*)sender;

@end
