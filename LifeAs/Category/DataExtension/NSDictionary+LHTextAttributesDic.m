//
//  NSDictionary+LHTextAttributesDic.m
//  kuparts3
//
//  Created by lyleKP on 15/8/14.
//  Copyright (c) 2015年 lyleLH. All rights reserved.
//

#import "NSDictionary+LHTextAttributesDic.h"

@implementation NSDictionary (LHTextAttributesDic)

/**
 *  主页导航标题设置
 *
 */
+ (NSDictionary * )lh_naviTextAttributes {
    
    NSMutableDictionary * textNomalAttributesDic = [[NSMutableDictionary alloc] init];
    
//    textNomalAttributesDic[NSForegroundColorAttributeName] = [UIColor lh_blackNaviColor];
    
//    textNomalAttributesDic[NSFontAttributeName] = [UIFont lh_naviTitleFont];

    
    return textNomalAttributesDic;
}
/**
 *  下级界面导航栏标题设置,收藏夹
 */
+ (NSDictionary * )lh_otherNaviTextAttributes {
    
    NSMutableDictionary * textNomalAttributesDic = [[NSMutableDictionary alloc] init];
    
//    textNomalAttributesDic[NSForegroundColorAttributeName] = [UIColor lh_mainColor];
    
//    textNomalAttributesDic[NSFontAttributeName] = [UIFont lh_naviTitleFont];
    
    
    return textNomalAttributesDic;
}

@end
