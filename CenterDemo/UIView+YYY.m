//
//  UIView+YYY.m
//  CenterDemo
//
//  Created by YYY on 2019/1/8.
//  Copyright © 2019 YYY. All rights reserved.
//

#import "UIView+YYY.h"

@implementation UIView (YYY)
- (CGFloat)centerY{
    return self.center.y;
}
- (void)setCenterY:(CGFloat)ty{
    CGPoint center = self.center;
    center.y = ty;
    self.center = center;
}
@end
