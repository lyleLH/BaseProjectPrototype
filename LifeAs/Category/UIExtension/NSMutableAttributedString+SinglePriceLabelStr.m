//
//  NSMutableAttributedString+SinglePriceLabelStr.m
//  KPShop
//
//  Created by lyleKP on 15/11/12.
//  Copyright © 2015年 kuparts. All rights reserved.
//

#import "NSMutableAttributedString+SinglePriceLabelStr.h"
#import "UISettingExtention.h"
#import "NSString+Format.h"
@implementation NSMutableAttributedString (SinglePriceLabelStr)



+ (NSMutableAttributedString*)lh_Price48pxStr:(NSString *)aStr {
    
//    NSString *str =[NSString stringWithFormat:@"%g", [aStr floatValue]];
    NSString *str =[NSString stringDisposeWithFloat:[aStr floatValue]];
    NSMutableAttributedString *titleStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"¥%@",str]];

    [titleStr addAttribute:NSForegroundColorAttributeName value:[UIColor kp_themecolor] range:NSMakeRange(0,1)];
    
    [titleStr addAttribute:NSFontAttributeName value:[UIFont kp_auxiliaryTitleFont] range:NSMakeRange(0, 1)];
    
    [titleStr addAttribute:NSForegroundColorAttributeName value:[UIColor kp_themecolor] range:NSMakeRange(1,str.length)];
    
    [titleStr addAttribute:NSFontAttributeName value:[UIFont kp_singleNumberFont] range:NSMakeRange(1, str.length)];
    
    return titleStr;
}


+ (NSMutableAttributedString*)lh_Price36pxStr:(NSString *)aStr {
    
//    NSString *str =[NSString stringWithFormat:@"%g", [aStr floatValue]];
    NSString *str =[NSString stringDisposeWithFloat:[aStr floatValue]];
    
    NSMutableAttributedString *titleStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"¥%@",str]];

    
    [titleStr addAttribute:NSForegroundColorAttributeName value:[UIColor kp_themecolor] range:NSMakeRange(0,1)];
    
    [titleStr addAttribute:NSFontAttributeName value:[UIFont kp_auxiliaryTitleFont] range:NSMakeRange(0, 1)];
    
    [titleStr addAttribute:NSForegroundColorAttributeName value:[UIColor kp_themecolor] range:NSMakeRange(1,str.length)];
    
    [titleStr addAttribute:NSFontAttributeName value:[UIFont kp_subSingleNumberFont] range:NSMakeRange(1, str.length)];
    
    return titleStr;
}

+ (NSMutableAttributedString*)lh_Price24pxGrayStr:(NSString *)aStr {
    
    NSString *str =[NSString stringDisposeWithFloat:[aStr floatValue]];

    
    NSMutableAttributedString *titleStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"¥%@",str]];
    
    
    [titleStr addAttribute:NSForegroundColorAttributeName value:[UIColor kp_suggestiveGrayColor] range:NSMakeRange(0,1)];
    
    [titleStr addAttribute:NSFontAttributeName value:[UIFont kp_subNumberFont] range:NSMakeRange(0, 1)];
    
    [titleStr addAttribute:NSForegroundColorAttributeName value:[UIColor kp_suggestiveGrayColor] range:NSMakeRange(1,str.length)];
    
    [titleStr addAttribute:NSFontAttributeName value:[UIFont kp_subNumberFont] range:NSMakeRange(1, str.length)];
    
    return titleStr;
}



+ (NSMutableAttributedString*)lh_Price28pxDarkStr:(NSString *)aStr {
    
//    NSString *str =[NSString stringWithFormat:@"%g", [aStr doubleValue]];
    NSString *str =[NSString stringDisposeWithFloat:[aStr floatValue]];
    NSMutableAttributedString *titleStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"¥%@",str]];
    
    
    [titleStr addAttribute:NSForegroundColorAttributeName value:[UIColor kp_titleBlackColor] range:NSMakeRange(0,1)];
    
    [titleStr addAttribute:NSFontAttributeName value:[UIFont kp_nomalNumberFont] range:NSMakeRange(0, 1)];
    
    [titleStr addAttribute:NSForegroundColorAttributeName value:[UIColor kp_titleBlackColor] range:NSMakeRange(1,str.length)];
    
    [titleStr addAttribute:NSFontAttributeName value:[UIFont kp_nomalNumberFont] range:NSMakeRange(1, str.length)];
    
    return titleStr;
}


@end
