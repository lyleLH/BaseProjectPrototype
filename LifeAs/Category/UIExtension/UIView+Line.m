//
//  UIView+Line.m
//  KPShop
//
//  Created by lyle on 15/11/9.
//  Copyright © 2015年 kuparts. All rights reserved.
//

#import "UIView+Line.h"
#import "UISettingExtention.h"
@implementation UIView (Line)





- (void)lh_addButtomLine {
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.frame)-1, SCREEN_WIDTH, 0.7f)];
    view.backgroundColor = [UIColor kp_graySepreateLineColor];
    
    [self addSubview:view];
}
- (void)lh_addLeftSpaceButtomLine {
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(self.frame)-1, SCREEN_WIDTH-10, 0.7f)];
    view.backgroundColor = [UIColor kp_graySepreateLineColor];
    
    [self addSubview:view];
}


- (void)lh_addTopLine {
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMinY(self.frame)-1, SCREEN_WIDTH, 0.7f)];
    view.backgroundColor = [UIColor kp_graySepreateLineColor];
    
    [self.superview addSubview:view];
}

@end
