//
//  UILabel+LHCreatLabel.m
//  LHAppFramework
//
//  Created by lyleKP on 15/8/3.
//  Copyright (c) 2015年 lyleKP. All rights reserved.
//

#import "UILabel+LHCreatLabel.h"
@implementation UILabel (LHCreatLabel)




/**
 *  商品活着服务描述标签
 *
 */
+ (UILabel *)lh_descriptionLabelFrame:(CGRect)frame
                               String:(NSString *) aStr {
    
    UILabel * label =[UILabel new];
    
    [label setFrame:frame];
    label.text = aStr;
    [label setTextColor:[UIColor grayColor]];
    label.numberOfLines = 2;
    label.font = [UIFont kp_bigTitleFont];
    return label;
}

/**
 *  价格标签
 
 */
+ (UILabel *)lh_priceLabelFrame:(CGRect)frame
                         String:(NSString *) aStr {
    
    UILabel * label =[UILabel new];
    [label setFrame:frame];
    label.text = aStr;
    [label setTextColor:[UIColor orangeColor]];
    label.font = [UIFont kp_nomalNumberFont];
    return label;
    
}
/**
 *  原价标签
 
 */

+ (UILabel *)lh_oldPriceLabelFrame:(CGRect)frame
                        WithString:(NSString *) aStr {
    
    UILabel * label =[UILabel new];
    [label setFrame:frame];
    label.text = aStr;
    [label setTextColor:[UIColor lightGrayColor]];
    label.font = [UIFont kp_subSingleNumberFont];
    return label;
    
}

/**
 *  维保订单列表
 */
+ (UILabel *)lp_maintenanceOrderListLableFrame:(CGRect)frame
                                        String:(NSString *)aStr {
    UILabel * label =[UILabel new];
    [label setFrame:frame];
    label.text = aStr;
    [label setTextColor:[UIColor kp_suggestiveGrayColor]];
    label.font = [UIFont kp_nomalTitleFont];
    CGSize lablesize = [aStr sizeWithAttributes:@{NSFontAttributeName:label.font}];
    label.width = ceilf(lablesize.width);
    return label;
}
/**
 *  维保订单列表价格
 */
+ (UILabel *)lp_maintenanceOrderListPriceLableFrame:(CGRect)frame
                                             String:(NSString *)aStr {
    UILabel * label =[UILabel new];
    [label setFrame:frame];
    label.text = aStr;
    [label setTextColor:[UIColor kp_themecolor]];
    CGSize lablesize = [aStr sizeWithAttributes:@{NSFontAttributeName:[UIFont kp_nomalTitleFont]}];
    label.width = ceilf(lablesize.width);
    return label;
}
/**
 *  维保订单详情描述文字
 */
+ (UILabel *)lp_maintenanceOrderDetailPriceLableFrame:(CGRect)frame
                                               String:(NSString *)aStr {
    
    UILabel * label =[UILabel new];
    [label setFrame:frame];
    label.text = aStr;
    [label setTextColor:[UIColor kp_suggestiveGrayColor]];
    label.font = [UIFont kp_nomalNumberFont];
    return label;
}
/**
 *  维保订单详情内容文字
 */
+ (UILabel *)lp_maintenanceOrderDetailContentLableFrame:(CGRect)frame
                                                 String:(NSString *)aStr {
    UILabel * label =[UILabel new];
    [label setFrame:frame];
    label.text = aStr;
    [label setTextColor:[UIColor kp_titleBlackColor]];
    label.font = [UIFont kp_nomalNumberFont];
    return label;
}

/**
 *  ly
 */

+ (UILabel *) ly_createLabelWithFrame:(CGRect)frame
                                title:(NSString *)title{
    
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = title;
    label.font = [UIFont kp_nomalTitleFont];
    label.textColor = [UIColor kp_titleBlackColor];
    
    return label;
}





@end
