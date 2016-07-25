//
//  UIColor+Util.h
//  LHTabbarDemo
//
//  Created by lyleKP on 15/7/31.
//  Copyright (c) 2015年 lyleKP. All rights reserved.
#import <UIKit/UIKit.h>

#define LHRGBColor(r,g,b)     [UIColor colorWithRed:(r)/255.0 green:(r)/255.0 blue:(r)/255.0 alpha:1.0]


#define LHRandomColor   LHRGBColor(arc4random_uniform(256),arc4random_uniform(256),arc4random_uniform(256))


#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define UIColorFromRGBHalfAlpha(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:0.5]

@interface UIColor (Util)



+ (UIColor *)colorWithHex:(int)hexValue alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHex:(int)hexValue;

/**
 *  全局用色
 */


/**
 * 浅灰色背景色 0xf5f5f5
 */
+ (UIColor *)kp_backgroungGrayColor;


/**
 *  主题颜色
 *  橙色0xff6c00
 */
+ (UIColor *)kp_themecolor;

+ (UIColor *)kp_themecolorDark;

+ (UIColor *)kp_btnWhiteDark;

/**
 *  文字：未选中0x999999
 */
+ (UIColor *)lh_textDeselectedColor;

/**
 * 纯白－按钮文字
 */
+ (UIColor *)kp_btnWhiteColor;

/**
 * 灰色－提示文字0x999999
 */
+ (UIColor *)kp_suggestiveGrayColor;

/**
 * 深黑－辅助默认文字0x666666
 */
+ (UIColor *)kp_defaultDarkGrayColor;

/**
 * 黑色－标题征文金额等主要文字0x333333
 */
+ (UIColor *)kp_titleBlackColor;

/**
 * 橙色－重要醒目，点击状态文字0xff6c00
 */
+ (UIColor *)kp_titleOrangeColor;

/**
 * 蓝色－用户名，全文，链接文字0x2578de
 */
+ (UIColor *)kp_linkBlueColor;

/**
 * 红色- 用于报错提示行文字0xf01818
 */
+ (UIColor *)kp_titleRedColor;


/**
 *  背景用色1 
 *  纯白_首页内页北京，顶部底部，对方对话框0xffffff
 */
+ (UIColor *)kp_whiteBackgroundColor;

/**
 *  背景用色2
 *  奶白_一级类别，搜索分类背景0xfcfbed
 */
+ (UIColor *)kp_yellowWhiteBackgroundColor ;
/**
 *  背景用色3
 *  浅白_一级类别，搜索分类背景0xeeeeee
 */
+ (UIColor *)kp_lightWhiteBackgroundColor ;

/**
 *  分割线灰色  0xd1d1d1
 *  列表分割线  1px  
 */

+ (UIColor *)kp_graySepreateLineColor;
/**
 *  分割线橙色 0xff6c00
 *  顶部底部分割线
 */
+ (UIColor *)kp_orangeSepreateLineColor;

/**
 *
 *  按钮不能点击颜色 0xbcbcbc
 */
+ (UIColor *)kp_btnDefaultClickBackgroundColor;


/**
 *
 *  0xed6108  价格颜色
 */
+ (UIColor *)kp_priceOrangeColor;

/**
 *  店铺首页服务码验证颜色
 *  0xff802c
 */
+ (UIColor *)kp_serviceCodeColor;

/**
 * 店铺首页灰色文字 0xffe5d3
 */
+ (UIColor *)kp_orderCountGrayColor;



@end
