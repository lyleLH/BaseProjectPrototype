//
//  UIImageView+ASCategory.m
//  PhoneOnline
//
//  Created by Kowloon on 12-10-12.
//  Copyright (c) 2012年 Goome. All rights reserved.
//

#import "UIImageView+ASCategory.h"
#import "objc/runtime.h"

@implementation UIImageView (ASCategory)

static char overviewKey;

- (void) setOnTap:(void(^)())block {
    
    [self setBlock:block];
    
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesturePearls =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap)];
    [self addGestureRecognizer:tapGesturePearls];
    
}

- (void)setBlock:(void(^)())block {
    objc_setAssociatedObject (self, &overviewKey,block,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void(^)())block {
    return objc_getAssociatedObject(self, &overviewKey);
}

- (void)onTap {
    void(^block)();
    block = [self block];
    block();
}

- (CGFloat)constrainedToWidth:(CGFloat)width originalWidth:(CGFloat)originalWidth originalHeight:(CGFloat)originalHeight
{
    CGFloat height = originalHeight;
    
    if (originalWidth > 0 && originalHeight > 0) {
        
        CGFloat factor = width / originalWidth;
        height *= factor;
        
        CGRect rect = self.frame;
        rect.size.height = height;
        self.frame = rect;
        
        //self.center = CGPointMake(self.superview.bounds.size.width * .5, self.superview.bounds.size.height * .5);
    } else {
        height = width;
    }
    
    return height;
}

- (CGFloat)constrainedToHeight:(CGFloat)height originalWidth:(CGFloat)originalWidth originalHeight:(CGFloat)originalHeight
{
    CGFloat width = originalWidth;
    
    if (originalWidth > 0 && originalHeight > 0) {
        
        CGFloat factor = height / originalHeight;
        width *= factor;
        
        CGRect rect = self.frame;
        rect.size.width = width;
        self.frame = rect;
        
        //self.center = CGPointMake(self.superview.bounds.size.width * .5, self.superview.bounds.size.height * .5);
    } else {
        width = height;
    }
    
    return width;
}

@end
