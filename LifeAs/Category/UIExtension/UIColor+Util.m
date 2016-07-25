//
//  UIColor+Util.m
//  LHTabbarDemo
//
//  Created by lyleKP on 15/7/31.
//  Copyright (c) 2015年 lyleKP. All rights reserved.

#import "UIColor+Util.h"
#import "AppDelegate.h"



@implementation UIColor (Util)

#pragma mark - Hex

+ (UIColor *)colorWithHex:(int)hexValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0
                           alpha:alpha];
}

+ (UIColor *)colorWithHex:(int)hexValue {
    return [UIColor colorWithHex:hexValue alpha:1.0];
}


+ (UIColor *)kp_themecolor {
    return UIColorFromRGB(0x2d7c69);
}
+ (UIColor *)kp_themecolorDark {
    return UIColorFromRGB(0xcb773f);
}
+ (UIColor *)lh_textDeselectedColor {
    return UIColorFromRGB(0x999999);

}

+ (UIColor *)kp_btnWhiteDark {
    return UIColorFromRGB(0xdedede);
}

/**
 * 纯白－按钮文字
 */
+ (UIColor *)kp_btnWhiteColor {
    return UIColorFromRGB(0xffffff);
}

/**
 * 灰色－提示文字 0x999999
 */
+ (UIColor *)kp_suggestiveGrayColor{
    return UIColorFromRGB(0x999999);
}

/**
 * 深黑－辅助默认文字 0x666666
 */
+ (UIColor *)kp_defaultDarkGrayColor {
    return UIColorFromRGB(0x666666);
}

/**
 * 黑色－标题征文金额等主要文字
 */
+ (UIColor *)kp_titleBlackColor {
    return UIColorFromRGB(0x333333);
}

/**
 * 橙色－重要醒目，点击状态文字
 */
+ (UIColor *)kp_titleOrangeColor {
    return UIColorFromRGB(0xff6c00);
}

/**
 * 蓝色－用户名，全文，链接文字
 */
+ (UIColor *)kp_linkBlueColor {
    return UIColorFromRGB(0x2578de);
}

/**
 * 红色- 用于报错提示行文字
 */
+ (UIColor *)kp_titleRedColor {
    return UIColorFromRGB(0xf01818);
}


/**
 *  背景用色1
 *  纯白_首页内页北京，顶部底部，对方对话框
 */
+ (UIColor *)kp_whiteBackgroundColor{
    return UIColorFromRGB(0xffffff);
}

/**
 *  背景用色2
 *  奶白_一级类别，搜索分类背景
 */
+ (UIColor *)kp_yellowWhiteBackgroundColor {
    return UIColorFromRGB(0xfcfbed);
}

/**
 *  背景用色3
 *  浅白_一级类别，搜索分类背景
 */
+ (UIColor *)kp_lightWhiteBackgroundColor {
    return UIColorFromRGB(0xeeeeee);
}


/**
 *  分割线用灰色
 *  列表分割线  1px
 */

+ (UIColor *)kp_graySepreateLineColor {
    return UIColorFromRGB(0xe5e5e5);
}
/**
 *  分割线橙色
 *  顶部底部分割线
 */
+ (UIColor *)kp_orangeSepreateLineColor{
    return UIColorFromRGB(0xff6c00);
}

/**
 *
 *  按钮不能点击颜色
 */
+ (UIColor *)kp_btnDefaultClickBackgroundColor{
    return UIColorFromRGB(0xbcbcbc);
}

/**
 *  店铺首页服务码验证颜色
 *  0xff802c
 */
+ (UIColor *)kp_serviceCodeColor{
    return UIColorFromRGB(0xff802c);
}

/**
 *
 *  0xed6108  价格颜色
 */
+ (UIColor *)kp_priceOrangeColor{
    return UIColorFromRGB(0xed6108);
}

/**
 * 店铺首页灰白色文字 0xffe5d3
 */
+ (UIColor *)kp_orderCountGrayColor {
    return UIColorFromRGB(0xffe5d3);
}
/**
 * 浅灰色背景色 0xf5f5f5
 */
+ (UIColor *)kp_backgroungGrayColor {
    return UIColorFromRGB(0xf5f5f5);
}

@end
