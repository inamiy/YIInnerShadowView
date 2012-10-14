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
        
        self.actions = [NSDictionary dictionaryWithObjectsAndKeys:
                        [NSNull null], @"position",
                        [NSNull null], @"bounds",
                        [NSNull null], @"contents",
                        nil];
        
        self.showsTopInnerShadow = YES;
        self.showsBottomInnerShadow  = YES;
        self.showsLeftInnerShadow = YES;
        self.showsRightInnerShadow = YES;
    }
    return self;
}

- (void)layoutSublayers
{
    [super layoutSublayers];
    
    CGFloat top = (self.showsTopInnerShadow ? self.shadowRadius : 0);
    CGFloat bottom = (self.showsBottomInnerShadow ? self.shadowRadius : 0);
    CGFloat left = (self.showsLeftInnerShadow ? self.shadowRadius : 0);
    CGFloat right = (self.showsRightInnerShadow ? self.shadowRadius : 0);
    
    CGRect largerRect = CGRectMake(self.bounds.origin.x - left,
                                   self.bounds.origin.y - top,
                                   self.bounds.size.width + left + right,
                                   self.bounds.size.height + top + bottom);
    
    // Create the larger rectangle path.
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, largerRect);
    
    // Add the inner path so it's subtracted from the outer path.
    // someInnerPath could be a simple bounds rect, or maybe
    // a rounded one for some extra fanciness.
    CGPathAddPath(path, NULL, [UIBezierPath bezierPathWithRect:self.bounds].CGPath);
    CGPathCloseSubpath(path);
    
    [self setPath:path];
    
    self.masksToBounds = YES;
}

@end
