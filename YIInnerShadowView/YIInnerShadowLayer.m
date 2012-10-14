//
//  YIInnerShadowLayer.m
//  YIInnerShadowView
//
//  Created by Yasuhiro Inami on 2012/10/14.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import "YIInnerShadowLayer.h"

@implementation YIInnerShadowLayer

- (id)init
{
    self = [super init];
    if (self) {

        self.needsDisplayOnBoundsChange = YES;
        
        // Standard shadow stuff
        [self setShadowColor:[[UIColor colorWithWhite:0 alpha:1] CGColor]];
        [self setShadowOffset:CGSizeMake(0.0f, 0.0f)];
        [self setShadowOpacity:1.0f];
        [self setShadowRadius:5];
        
        // Causes the inner region in this example to NOT be filled.
        [self setFillRule:kCAFillRuleEvenOdd];
        
    }
    return self;
}

- (void)layoutSublayers
{
    [super layoutSublayers];
    
    // Create the larger rectangle path.
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectInset(self.bounds, -self.shadowRadius*2, -self.shadowRadius*2));
    
    // Add the inner path so it's subtracted from the outer path.
    // someInnerPath could be a simple bounds rect, or maybe
    // a rounded one for some extra fanciness.
    CGPathAddPath(path, NULL, [UIBezierPath bezierPathWithRect:self.bounds].CGPath);
    CGPathCloseSubpath(path);
    
    [self setPath:path];
    
    self.masksToBounds = YES;
}

@end
