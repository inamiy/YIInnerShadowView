//
//  YIInnerShadowLayer.h
//  YIInnerShadowView
//
//  Created by Yasuhiro Inami on 2012/10/14.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

typedef enum {
    YIInnerShadowMaskNone       = 0,
    YIInnerShadowMaskTop        = 1 << 1,
    YIInnerShadowMaskBottom     = 1 << 2,
    YIInnerShadowMaskLeft       = 1 << 3,
    YIInnerShadowMaskRight      = 1 << 4,
    YIInnerShadowMaskVertical   = YIInnerShadowMaskTop | YIInnerShadowMaskBottom,
    YIInnerShadowMaskHorizontal = YIInnerShadowMaskLeft | YIInnerShadowMaskRight,
    YIInnerShadowMaskAll        = YIInnerShadowMaskVertical | YIInnerShadowMaskHorizontal
} YIInnerShadowMask;

//
// Ideas from Matt Wilding:
// http://stackoverflow.com/questions/4431292/inner-shadow-effect-on-uiview-layer
//
@interface YIInnerShadowLayer : CAShapeLayer

@property (nonatomic) YIInnerShadowMask shadowMask;

@end
