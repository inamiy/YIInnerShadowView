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
{
    YIInnerShadowView* _innerShadowView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // storyboard settings
    _innerShadowView = (id)self.view.subviews[0];
    _innerShadowView.shadowRadius = 10;
    _innerShadowView.cornerRadius = 0;
    _innerShadowView.shadowMask = YIInnerShadowMaskAll;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleSegmentedControl:(UISegmentedControl*)sender
{
    switch (sender.selectedSegmentIndex) {
        case 1:
            _innerShadowView.shadowMask = YIInnerShadowMaskTop;
            break;
        case 2:
            _innerShadowView.shadowMask = YIInnerShadowMaskVertical;
            break;
        case 3:
            _innerShadowView.shadowMask = YIInnerShadowMaskHorizontal;
            break;
        case 4:
            _innerShadowView.shadowMask = YIInnerShadowMaskAll;
            break;
        case 0:
        default:
            _innerShadowView.shadowMask = YIInnerShadowMaskNone;
            break;
    }
    
}

- (IBAction)handleShadowRadiusSlider:(UISlider*)sender
{
    _innerShadowView.shadowRadius = sender.value;
}

- (IBAction)handleCornerRadiusSlider:(UISlider*)sender
{
    _innerShadowView.cornerRadius = sender.value;
}

@end
