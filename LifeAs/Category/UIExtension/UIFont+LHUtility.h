//
//  UIFont+LHUtility.h
//  kuparts3
//
//  Created by lyleKP on 15/8/14.
//  Copyright (c) 2015年 lyleLH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "commonDefine.h"


@interface UIFont (LHUtility)

+ (UIFont*)lh_naviTitleFont ;

#pragma mark -- 文字字体

+ (UIFont*)kp_bigPriceFont;
/**
 *  36px 用在少数重要标题
 */
+ (UIFont*)kp_importantTitleFont ;
/**
 *  34px 用在少数重要标题
 */
+ (UIFont*)kp_rightBtnFont ;
/**
 *  30px 用在一些较为重要的文字或操作按钮
 */
+ (UIFont*)kp_bigTitleFont ;
/**
 *  28px 用于大多数文字
 */
+ (UIFont*)kp_nomalTitleFont ;

/**
 *  26px 用于大多数文字
 */
+ (UIFont*)kp_subTitleFont ;

/**
 *  24px 用于辅助性文字
 */
+ (UIFont*)kp_auxiliaryTitleFont ;
/**
 *  22px 用于辅助性文字
 */
+ (UIFont*)kp_InquiryDescriptionFont;
/**
 *  20px 用于辅助性文字
 */
+ (UIFont*)kp_companyNameFont ;
#pragma mark -- 数字字体

/**
 *  48px 单独出现，总价等信息层级较高
 */
+ (UIFont*)kp_singleNumberFont ;

/**
 *  36px 单独出现，总价等信息层级较高
 */
+ (UIFont*)kp_subSingleNumberFont ;

/**
 *  28px 普通级商品价格
 */
+ (UIFont*)kp_nomalNumberFont ;

/**
 *  24px 用于次要级商品价格
 */
+ (UIFont*)kp_subNumberFont;


/**
 *  60px 用于收入总金额
 */
+ (UIFont*)kp_totleAmountNumberFont;
/**
 *  22px 用于辅助性文字
 */
+ (UIFont*)kp_auxiliaryNumberFont ;

/**
 *  38px 用于店铺首页付款订单数
 */
+ (UIFont*)kp_payOrderCountNumberFont;

/**
 *  78px 用于店铺首页余额
 */
+ (UIFont*)kp_balanceAmountNumberFont;
/**
 *  64px 用于总评分
 */
+ (UIFont*)kp_totalScoreNumberFont;

/**
 *  32px
 */
+ (UIFont*)kp_topBtnTitleFont;

/**
 * 采购移植
 */
+ (UIFont *)ly_sourceHanSansCNLightFont:(NSInteger)fontSize;

/**
 *  22px 用于辅助性文字
 */
+ (UIFont*)kp_auxiliaryTinyTitleFont;
@end
