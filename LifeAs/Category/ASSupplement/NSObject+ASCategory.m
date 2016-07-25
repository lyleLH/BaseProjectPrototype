//
//  NSObject+ASCategory.m
//  CoomixMerchant
//
//  Created by Kowloon on 12-10-25.
//  Copyright (c) 2012年 Goome. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "NSObject+ASCategory.h"

// -------------------------- Device Model -------------------------- //

#define kDeviceModel                        @"deviceModel"
#define kDeviceModelPad                     @"iPad"
#define kDeviceModelPhone                   @"iPhone"
#define kDeviceModelPod                     @"iPod touch"

inline BOOL doubleEqualToDouble(double double1, double double2)
{
    return fabs(double1 - double2) <= pow(10, - 6);
}

inline BOOL doubleEqualToDoubleWithAccuracyExponent(double double1, double double2 ,int accuracyExponent)
{
    return fabs(double1 - double2) <= pow(10, - accuracyExponent);
}

inline BOOL CLLocationCoordinate2DEqualToCoordinate(CLLocationCoordinate2D coordinate1, CLLocationCoordinate2D coordinate2)
{
    return coordinate1.latitude == coordinate2.latitude && coordinate1.longitude == coordinate2.longitude;
}


@implementation NSObject (ASCategory)

- (BOOL)padDeviceModel
{
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? YES : NO;
}

- (BOOL)retinaDisplaySupported
{
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)] && [[UIScreen mainScreen] scale] == 2) {
        return YES;
    } else {
        return NO;
    }
}

- (NSString *)deviceModel
{
    if ([self padDeviceModel]) {
        return kDeviceModelPad;
    } else {
        return kDeviceModelPhone;
    }
}

- (NSInteger)integerValueFromValue:(id)value
{
    if ([value respondsToSelector:@selector(integerValue)]) {
        return [value integerValue];
    } else {
        return 0;
    }
}

- (BOOL)boolValueFromValue:(id)value
{
    if ([value respondsToSelector:@selector(boolValue)]) {
        return [value boolValue];
    } else {
        return NO;
    }
}

- (NSString *)stringValueFromValue:(id)value
{
    if ([value isKindOfClass:[NSString class]]) {
        return value;
    } else if ([value respondsToSelector:@selector(stringValue)]) {
        return [value stringValue];
    } else {
        return [NSString string];
    }
}

- (NSDictionary *)dictionaryValueFromValue:(id)value
{
    if ([value isKindOfClass:[NSDictionary class]]) {
        return value;
    } else {
        return [NSDictionary dictionary];
    }
}

- (void)standardUserDefaultsSetObject:(id)value forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:value forKey:key];
    [userDefaults synchronize];
}

- (NSString *)bundleVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

@end
