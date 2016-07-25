//
//  UILabel+KPLabel.m
//  KPShop
//
//  Created by lyleKP on 15/12/3.
//  Copyright © 2015年 kuparts. All rights reserved.
//

#import "UILabel+KPLabel.h"
#import "UISettingExtention.h"
@implementation UILabel (KPLabel)

+ (UILabel *)lh_TitleLabelWithFrame:(CGRect)frame
                               text:(NSString *)text {
    
    UILabel * label= [[UILabel alloc] initWithFrame:frame];
    label.textColor = [UIColor kp_titleBlackColor];
    label.font = [UIFont kp_auxiliaryTitleFont];
    label.text = text;
    
    return label;
}

@end
