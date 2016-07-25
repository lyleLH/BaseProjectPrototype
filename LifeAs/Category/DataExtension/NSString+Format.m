//
//  NSString+Format.m
//  GpsTracker
//
//  Created by Liuhao on 15/4/7.
//  Copyright (c) 2015年 Liuhao. All rights reserved.
//

#import "NSString+Format.h"

@implementation NSString (Format)

-(BOOL)isValidateEmail
{
    NSString *emailRegex = @"^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

-(BOOL)isValidatePassword      //验证密码合法性
{
    if(self.length >=8 && self.length<=20)
        return YES;
    return NO;
}



#pragma 正则匹配用户密码6-18位数字和字母组合
- (BOOL)checkPassword
{
    NSString *pattern = @"^(?![0-9]+$)(?![a-zA-Z]+$)[a-zA-Z0-9]{6,18}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
}

#pragma 正则匹配用户密码6-18位数字,字母
- (BOOL)checkPayPassword
{
    NSString *pattern = @"[a-zA-Z0-9]{6,18}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
}

#pragma 正则匹配中文
-(BOOL)chinaWord{
     NSString *pattern = @"[\u4e00-\u9fa5]";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
    
}



#pragma 正则判断特殊字符串
-(BOOL)specialCharacter{
    //中文及全角标点符号(字符)
    NSString *pattern = @"[\u3000-\u301e\ufe10-\ufe19\ufe30-\ufe44\ufe50-\ufe6b\uff01-\uffee]";
    //
//     NSString *pattern2 = @"";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = ![pred evaluateWithObject:self];
    return isMatch;
    
}
#pragma mark -- 正则判断正整数 + 0
- (BOOL)isPureInt{
    NSString *pattern = @"[0-9]";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
}

#pragma mark -- 字符串是否为空
+ (BOOL)isEmpty:(NSString *)str{
    if (str == nil || str == NULL) {
        return YES;
    }
    if ([str isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}

/** 字符串为空返回 @”“ */
+ (NSString *)isEmptyString:(NSString *)str {
    if (str == nil || str == NULL) {
        return @"";
    }
    if ([str isKindOfClass:[NSNull class]]) {
        return @"";
    }
    if ([[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return @"";
    }
    return str;
}


+ (BOOL)isValidateTrackerNumberWithTrackerNumber:(NSString *)trackerNumber
{

    if(trackerNumber.length!=12)
    {
        return NO;
        
    }
    
    return YES;
}
+(BOOL)isValidateEmail:(NSString *)string
{
    NSString *emailRegex = @"^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:string];
}
+(BOOL)isValidateQQ:(NSString *)String {
    
    NSString *qqRegex = @"[1-9][0-9]{4,}";
    NSPredicate *qqPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", qqRegex];
    return [qqPredicate evaluateWithObject:String];
}

// 正则判断手机号码地址格式
+ (BOOL)isValidateMobileNumber:(NSString *)mobileNum
{
    /**
     * 手机号码
     * 移动：134,135,136,137,138,139,150,151,152,157,158,159,182,183,184,187,188,178(4G),147，1705
     * 联通：130,131,132,152,155,156,185,186,1709,176,145
     * 电信：133,153,180,189,1700,177,181
     */
    NSString *MOBILE = @"^1(3[0-9]|4[57]|5[0-35-9]|7[06-8]|8[0-9])\\d{8}$";
    
    /**
     * 中国移动：China Mobile
     * 134,135,136,137,138,139,150,151,152,157,158,159,182,183,184,187,188,178(4G),147，1705
     */
    NSString * CM = @"^1(705|(3[4-9]|5[0127-9]|78|8[23478])\\d)\\d{7}$";
    /**
     * 中国联通：China Unicom
     * 130,131,132,152,155,156,185,186,1709,176,145
     */
    NSString * CU = @"^1((3[0-2]|45|5[256]|8[56])[0-9]|709)\\d{7}$";
    /**
     * 中国电信：China Telecom
     * 133,153,180,189,1700,177,181
     */
    NSString * CT = @"^1((33|53|77|8[019])[0-9]|700)\\d{7}$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    
    if (([regextestmobile evaluateWithObject:mobileNum] == YES)
        || ([regextestcm evaluateWithObject:mobileNum] == YES)
        || ([regextestct evaluateWithObject:mobileNum] == YES)
        || ([regextestcu evaluateWithObject:mobileNum] == YES))
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

//判断SIM卡号
+ (BOOL)isValidateSimNumber:(NSString *)String
{
    for(int i=0; i< [String length];i++){
        
        int a = [String characterAtIndex:i];
        
        if( a > 0x4e00 && a < 0x9fff)
            
            return true;
        
    }
    return false;
}

//车架号
+ (BOOL)isValidateVINNumber:(NSString *)VINstr {
    NSString *pattern = @"[a-zA-Z0-9]{17}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:VINstr];
    return isMatch;
}

//验证数字
+ (BOOL)isValidateDigital:(NSString *)string {
    NSString *regex = @"^([1-9][0-9]*)$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:string];
}

//验证价格字符串两位小数
+ (BOOL)isValidatePrice:(NSString *)string {
    
//    NSString *regex = @"^([1-9][0-9]*)|(([1-9][0-9]*)+([.]{1}[0-9]+){1,2})$";
//    NSString *regex1 = @"^([0]+([.]{1}[0-9]+){1,2})$";
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
//    NSPredicate *predicate1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex1];
//    return [predicate evaluateWithObject:string]||[predicate1 evaluateWithObject:string];
    NSString *regex = @"^[0-9]+(.[0-9]{1,2})?$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL isMatch = [pred evaluateWithObject:string];
    return isMatch;
}

//验证字符串一位小数
+ (BOOL)isValidatePriceOne:(NSString *)string {
    
//    NSString *regex = @"^([1-9][0-9]*)|(([1-9][0-9]*)+([.]{1}[0-9]+){1})$";
//    NSString *regex1 = @"^([0-9]+([.]{1}[0-9]+){1})$";
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
//    NSPredicate *predicate1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex1];
//    return [predicate evaluateWithObject:string]||[predicate1 evaluateWithObject:string];
    
    NSString *regex = @"^[0-9]+(.[0-9]{1,1})?$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL isMatch = [pred evaluateWithObject:string];
    return isMatch;
    
}

//判断追踪器序列号返回可绑定类型
+ (NSString *)identifyProductTypeFromTrackerNumber:(NSString *)trackerNumber
{

    
    NSString * identifyStr=[trackerNumber substringWithRange:NSMakeRange(1,2)];
    NSLog(@"identifyStr:%@",identifyStr);
    
    NSInteger identifyNumber = [identifyStr integerValue];
    
    if(identifyNumber == 01 || identifyNumber ==02|| identifyNumber ==06)
    {
        return @"1";
    }
    else if(identifyNumber == 05 || identifyNumber ==11 || identifyNumber ==13)
    {
        return @"2";
    }
    else if(identifyNumber == 03 || identifyNumber ==12)
    {
        return @"4";
    }
    else if(identifyNumber == 04 )
    {
        return @"3";
    }
    
    return nil;
}
//浮点数处理并去掉多余的0
+(NSString *)stringDisposeWithFloat:(double)floatValue
{
    NSString *str = [NSString stringWithFormat:@"%.2f",floatValue];
    NSInteger len = str.length;
    for (int i = 0; i < len; i++)
    {
        if (![str  hasSuffix:@"0"])
            break;
        else
            str = [str substringToIndex:[str length]-1];
    }
    if ([str hasSuffix:@"."])//避免像2.00这样的被解析成2.
    {
        return [str substringToIndex:[str length]-1];//s.substring(0, len - i - 1);
    }
    else
    {
        return str;
    }
}


//是否包含表情字符
+ (BOOL)stringContainsEmoji:(NSString *)string
{
    __block BOOL returnValue = NO;
    
    [string enumerateSubstringsInRange:NSMakeRange(0, [string length])
                               options:NSStringEnumerationByComposedCharacterSequences
                            usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                const unichar hs = [substring characterAtIndex:0];
                                if (0xd800 <= hs && hs <= 0xdbff) {
                                    if (substring.length > 1) {
                                        const unichar ls = [substring characterAtIndex:1];
                                        const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                                        if (0x1d000 <= uc && uc <= 0x1f77f) {
                                            returnValue = YES;
                                        }
                                    }
                                } else if (substring.length > 1) {
                                    const unichar ls = [substring characterAtIndex:1];
                                    if (ls == 0x20e3) {
                                        returnValue = YES;
                                    }
                                } else {
                                    if (0x2100 <= hs && hs <= 0x27ff) {
                                        returnValue = YES;
                                    } else if (0x2B05 <= hs && hs <= 0x2b07) {
                                        returnValue = YES;
                                    } else if (0x2934 <= hs && hs <= 0x2935) {
                                        returnValue = YES;
                                    } else if (0x3297 <= hs && hs <= 0x3299) {
                                        returnValue = YES;
                                    } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                                        returnValue = YES;
                                    }
                                }
                            }];
    
    return returnValue;
}


//数字格式化为每隔三位用逗号隔开
+(NSString *)countNumAndChangeformat:(NSString *)num
{
    int count = 0;
    long long int a = num.longLongValue;
    NSMutableString *string = [NSMutableString stringWithFormat:@"%lld",a];
    NSMutableString *newstring = [NSMutableString string];
    if (string.length != num.length && ![num isEqualToString:@""]) {
        [newstring insertString:[num substringFromIndex:string.length] atIndex:0];
    }
    while (a != 0)
    {
        count++;
        a /= 10;
    }
    while (count > 3) {
        count -= 3;
        NSRange rang = NSMakeRange(string.length - 3, 3);
        NSString *str = [string substringWithRange:rang];
        [newstring insertString:str atIndex:0];
        [newstring insertString:@"," atIndex:0];
        [string deleteCharactersInRange:rang];
    }
    [newstring insertString:string atIndex:0];
    return newstring;
}

@end
