//
//  UILabel+LHCreatLabel.h
//  LHAppFramework
//
//  Created by lyleKP on 15/8/3.
//  Copyright (c) 2015年 lyleKP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UISettingExtention.h"
@interface UILabel (LHCreatLabel)

/**
 *  商品或者服务描述标签
 *
 */
+ (UILabel *)lh_descriptionLabelFrame:(CGRect)frame
                               String:(NSString *) aStr ;
/**
 *  价格标签

 */
+ (UILabel *)lh_priceLabelFrame:(CGRect)frame
                         String:(NSString *) aStr ;
/**
 *  原价标签
 */

+ (UILabel *)lh_oldPriceLabelFrame:(CGRect)frame
                        WithString:(NSString *) aStr;

/**
 *  维保订单列表
 */
+ (UILabel *)lp_maintenanceOrderListLableFrame:(CGRect)frame
                                        String:(NSString *)aStr;

/**
 *  维保订单列表价格
 */
+ (UILabel *)lp_maintenanceOrderListPriceLableFrame:(CGRect)frame
                                        String:(NSString *)aStr;
/**
 *  维保订单详情描述文字
 */
+ (UILabel *)lp_maintenanceOrderDetailPriceLableFrame:(CGRect)frame
                                             String:(NSString *)aStr;
/**
 *  维保订单详情内容文字
 */
+ (UILabel *)lp_maintenanceOrderDetailContentLableFrame:(CGRect)frame
                                               String:(NSString *)aStr;

/**
 *   字体:14 颜色:0x333333 
 */
+ (UILabel *) ly_createLabelWithFrame:(CGRect)frame
                                title:(NSString *)title;


@end
