//
//  YIInnerShadowView.h
//  YIInnerShadowView
//
//  Created by Yasuhiro Inami on 2012/10/14.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "YIInnerShadowLayer.h"

@interface YIInnerShadowView : UIView

@property (nonatomic, strong, readonly) YIInnerShadowLayer* innerShadowLayer;

@property (nonatomic) YIInnerShadowMask shadowMask;

@property (nonatomic, strong) UIColor* shadowColor;
@property (nonatomic)         CGFloat  shadowOpacity;
@property (nonatomic)         CGSize   shadowOffset;
@property (nonatomic)         CGFloat  shadowRadius;

@property (nonatomic)         CGFloat  cornerRadius;

@end
