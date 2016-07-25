//
//  NSString+Format.h
//  GpsTracker
//
//  Created by Liuhao on 15/4/7.
//  Copyright (c) 2015年 Liuhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Format)

-(BOOL)isValidateEmail;         //验证邮箱合法性
-(BOOL)isValidatePassword;      //验证密码合法性

-(BOOL)checkPassword;          //验证用户密码6-18位数字和字母组合
-(BOOL)chinaWord;       //验证是否中文
- (BOOL)checkPayPassword;//正则匹配用户密码6-18位数字,字母
-(BOOL)specialCharacter; //排除特殊字符
- (BOOL)isPureInt;//整形判断

/** 字符串是否为空 */
+ (BOOL)isEmpty:(NSString *)str;

/** 字符串为空返回 @”“ */
+ (NSString *)isEmptyString:(NSString *)str;

//验证追踪器编号
//- (BOOL)isValidateTrackerNumberWithTrackerNumber:(NSString * )trackerNumber;

+ (BOOL)isValidateTrackerNumberWithTrackerNumber:(NSString *)trackerNumber;
//由追踪器序列号得到绑定类型
+ (NSString *)identifyProductTypeFromTrackerNumber:(NSString *)trackerNumber;
//验证Sim卡号

+ (BOOL)isValidateSimNumber:(NSString *)String;
+(BOOL)isValidateEmail:(NSString *)string;         //验证邮箱合法性
+(BOOL)isValidateQQ:(NSString *)String; //验证QQ
//验证手机号
+ (BOOL)isValidateMobileNumber:(NSString *)mobileNum;

//车架号
+ (BOOL)isValidateVINNumber:(NSString *)VINstr;

//验证纯数字
+ (BOOL)isValidateDigital:(NSString *)string;

//验证价格字符串
+ (BOOL)isValidatePrice:(NSString *)string;

+ (BOOL)isValidatePriceOne:(NSString *)string;

//浮点数处理并去掉多余的0
+(NSString *)stringDisposeWithFloat:(double)floatValue;

//是否包含表情字符
+ (BOOL)stringContainsEmoji:(NSString *)string;

/** 数字格式化为每隔三位用逗号隔开 */
+(NSString *)countNumAndChangeformat:(NSString *)num;

/*
 1.验证车牌号
 2.验证车架号
 3.验证VIN码
 
 */

@end
