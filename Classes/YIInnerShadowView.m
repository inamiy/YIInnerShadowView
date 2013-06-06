//
//  YIInnerShadowView.m
//  YIInnerShadowView
//
//  Created by Yasuhiro Inami on 2012/10/14.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import "YIInnerShadowView.h"

@implementation YIInnerShadowView

//+ (Class)layerClass
//{
//    return [YIInnerShadowLayer class];
//}

- (void)_init
{
    // add as sublayer so that self.backgroundColor will work nicely
    _innerShadowLayer = [YIInnerShadowLayer layer];
    
    _innerShadowLayer.actions = [NSDictionary dictionaryWithObjectsAndKeys:
                                 [NSNull null], @"position",
                                 [NSNull null], @"bounds",
                                 [NSNull null], @"contents",
                                 [NSNull null], @"shadowColor",
                                 [NSNull null], @"shadowOpacity",
                                 [NSNull null], @"shadowOffset",
                                 [NSNull null], @"shadowRadius",
                                 nil];
    
    [self.layer addSublayer:_innerShadowLayer];
    self.layer.masksToBounds = YES;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self _init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self _init];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _innerShadowLayer.frame = self.layer.bounds;
}

#pragma mark -

#pragma mark Accessors

- (YIInnerShadowMask)shadowMask
{
    return _innerShadowLayer.shadowMask;
}

- (void)setShadowMask:(YIInnerShadowMask)shadowMask
{
    _innerShadowLayer.shadowMask = shadowMask;
}

- (UIColor *)shadowColor
{
    return [UIColor colorWithCGColor:_innerShadowLayer.shadowColor];
}

- (void)setShadowColor:(UIColor *)shadowColor
{
    _innerShadowLayer.shadowColor = shadowColor.CGColor;
}

- (CGFloat)shadowOpacity
{
    return _innerShadowLayer.shadowOpacity;
}

- (void)setShadowOpacity:(CGFloat)shadowOpacity
{
    _innerShadowLayer.shadowOpacity = shadowOpacity;
}

- (CGSize)shadowOffset
{
    return _innerShadowLayer.shadowOffset;
}

- (void)setShadowOffset:(CGSize)shadowOffset
{
    _innerShadowLayer.shadowOffset = shadowOffset;
}

- (CGFloat)shadowRadius
{
    return _innerShadowLayer.shadowRadius;
}

- (void)setShadowRadius:(CGFloat)shadowRadius
{
    _innerShadowLayer.shadowRadius = shadowRadius;
}

- (CGFloat)cornerRadius;
{
    return _innerShadowLayer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius;
{
    self.layer.cornerRadius = cornerRadius;
    _innerShadowLayer.cornerRadius = cornerRadius;
}

@end
