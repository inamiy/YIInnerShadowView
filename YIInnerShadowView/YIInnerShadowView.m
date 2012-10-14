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
    [self.layer addSublayer:_innerShadowLayer];
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

@end
