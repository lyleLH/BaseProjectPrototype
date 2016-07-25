//
//  NSString+SystemInfo.m
//  GpsTracker
//
//  Created by Liuhao on 15/3/31.
//  Copyright (c) 2015年 Liuhao. All rights reserved.
//

#import "NSString+SystemInfo.h"
#include <ifaddrs.h>
#include <arpa/inet.h>
@implementation NSString (SystemInfo)

//JSON请求用
+(NSString *) stringWithSystemLanguageForAPI
{
    NSString* preferredLang = [NSString getPreferredLang];
    
    if ([preferredLang isEqualToString:@"zh-Hans"])
    {
        return @"zh-cn";
    }
    else if([preferredLang isEqualToString:@"zh-Hant"])
    {
        return @"zh-hk";
    }
    else
    {
        return @"en-us";
    }
}

+(ProductArea) getProductArea
{
    NSString* preferredLang = [NSString getPreferredLang];
    
    if ([preferredLang isEqualToString:@"zh-Hans"])
    {
        return kProductArea_China;
    }
    else if([preferredLang isEqualToString:@"zh-Hant"])
    {
        return kProductArea_HongKong;
    }
    else
    {
        return kProductArea_ForeignArea;
    }
}

+(NSString *) getPreferredLang
{
    NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
    NSArray* languages = [defs objectForKey:@"AppleLanguages"];
    NSString* preferredLang = [languages objectAtIndex:0];
    
    return preferredLang;
}

+ (NSString *)deviceIPAdress {
    
    NSString *address = @"an error occurred when obtaining ip address";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    
    int success = 0;
    
    success = getifaddrs(&interfaces);
    
    if (success == 0) { // 0 表示获取成功
        
        temp_addr = interfaces;
        while (temp_addr != NULL) {
            if( temp_addr->ifa_addr->sa_family == AF_INET) {
                // Check if interface is en0 which is the wifi connection on the iPhone
                if ([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
                    // Get NSString from C String
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            
            temp_addr = temp_addr->ifa_next;
        }
    }
    
    freeifaddrs(interfaces);
    return address;  
}

@end
