//
//  UIFont+LHUtility.m
//  kuparts3
//
//  Created by lyleKP on 15/8/14.
//  Copyright (c) 2015年 lyleLH. All rights reserved.
//

#import "UIFont+LHUtility.h"

@implementation UIFont (LHUtility)
+ (NSString*)nowFontName {
    NSString * font ;
    if(IOS_VERSION>9.0) {
        font= @"PingFang SC";
    }else {
        font= @"Heiti SC";
    }
    return font;
}
+ (UIFont*)lh_naviTitleFont {

    return  [UIFont fontWithName:[self nowFontName] size:20];
}


/**
 *  44px 用在少数价格文字
 */
+ (UIFont*)kp_bigPriceFont {
    return  [UIFont fontWithName:[self nowFontName] size:18];
}

/**
 *  36px 用在少数重要标题
 */
+ (UIFont*)kp_importantTitleFont {
    return  [UIFont fontWithName:[self nowFontName] size:18];
}
/**
 *  34px 用在少数重要标题
 */
+ (UIFont*)kp_rightBtnFont {
    return  [UIFont fontWithName:[self nowFontName] size:17];
}
/**
 *  32px
 */
+ (UIFont*)kp_topBtnTitleFont {
    return  [UIFont fontWithName:[self nowFontName] size:16];
}
/**
 *  30px 用在一些较为重要的文字或操作按钮
 */
+ (UIFont*)kp_bigTitleFont {
    return  [UIFont fontWithName:[self nowFontName] size:15];
}
/**
 *  28px 用于大多数文字
 */
+ (UIFont*)kp_nomalTitleFont {
    return  [UIFont fontWithName:[self nowFontName] size:14];
}
/**
 *  26px 用于大多数文字
 */
+ (UIFont*)kp_subTitleFont {
    return  [UIFont fontWithName:[self nowFontName] size:13];
}

/**
 *  24px 用于辅助性文字
 */
+ (UIFont*)kp_auxiliaryTitleFont {
    return  [UIFont fontWithName:[self nowFontName] size:12];
}

/**
 *  22px 用于辅助性文字
 */
+ (UIFont*)kp_InquiryDescriptionFont {
    return  [UIFont fontWithName:[self nowFontName] size:11];
}
/**
 *  20px 用于辅助性文字
 */
+ (UIFont*)kp_companyNameFont {
    return  [UIFont fontWithName:[self nowFontName] size:10];
}
#pragma mark -- 数字字体

/**
 *  48px 单独出现，总价等信息层级较高
 */
+ (UIFont*)kp_singleNumberFont  {
    return  [UIFont fontWithName:@"HelveticaNeue" size:24];
}

/**
 *  36px 单独出现，总价等信息层级较高
 */
+ (UIFont*)kp_subSingleNumberFont  {
    return  [UIFont fontWithName:@"HelveticaNeue" size:18];
}

/**
 *  28px 普通级商品价格
 */
+ (UIFont*)kp_nomalNumberFont{
    return  [UIFont fontWithName:@"Helvetica Neue" size:14];
}

/**
 *  24px 用于次要级商品价格
 */
+ (UIFont*)kp_subNumberFont {
    return  [UIFont fontWithName:@"Helvetica Neue" size:12];
}


/**
 *  22px 用于辅助性文字
 */
+ (UIFont*)kp_auxiliaryNumberFont {
    return  [UIFont fontWithName:@"Helvetica Neue" size:11];
}

/**
*  60px 用于收入总金额
*/
+ (UIFont*)kp_totleAmountNumberFont {
    return  [UIFont fontWithName:@"Helvetica Neue" size:30];
}

/**
 *  78px 用于店铺首页余额
 */
+ (UIFont*)kp_balanceAmountNumberFont {
    return  [UIFont fontWithName:@"Helvetica Neue" size:39];
}

/**
 *  64px 用于总评分
 */
+ (UIFont*)kp_totalScoreNumberFont {
    return  [UIFont fontWithName:@"Helvetica Neue" size:32];
}

/**
 *  38px 用于店铺首页付款订单数
 */
+ (UIFont*)kp_payOrderCountNumberFont {
    return  [UIFont fontWithName:@"Helvetica Neue" size:19];
}

+ (UIFont *) ly_sourceHanSansCNLightFont:(NSInteger)fontSize {
    return [UIFont fontWithName:[self nowFontName] size:fontSize];
}

/**
 *  22px 用于辅助性文字
 */
+ (UIFont*)kp_auxiliaryTinyTitleFont {
    return  [UIFont fontWithName:[self nowFontName] size:11];
}


@end
