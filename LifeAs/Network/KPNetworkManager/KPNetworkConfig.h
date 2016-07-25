//
//  KPNetworkConfig.h
//  kuparts3
//
//  Created by 李久龙 on 16/3/18.
//  Copyright © 2016年 Kuparts. All rights reserved.
//
#import <UIKit/UIKit.h>
#ifndef KPNetworkConfig_h
#define KPNetworkConfig_h


//static NSString *kHTTPMethodGet = @"GET";
//static NSString *kHTTPMethodPost = @"POST";
//static NSString *kHTTPMethodPut = @"PUT";
//static NSString *kHTTPMethodDelete = @"DELETE";

static CGFloat kTimeoutInterval = 30.0f;

static NSString *kDefaultErrorTips = @"网络异常，请检查网络是否正常";

@class KPResponse;
typedef void (^KPResponseBlock)(KPResponse *response);

typedef NS_ENUM(NSUInteger, KPNetworkStatus){
    KPNetworkSuccess = 0,
    KPNetworkHTTPFailed = 9999,
};



#endif /* KPNetworkConfig_h */
