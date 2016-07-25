//
//  KPRequestParameters.h
//  kuparts3
//
//  Created by 李久龙 on 16/3/24.
//  Copyright © 2016年 lyleLH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDataModel.h"

typedef NS_ENUM(NSUInteger, KPHTTPMethod) {
    KPHTTPMethodGet = 0,
    KPHTTPMethodPost = 1,
};

typedef NS_ENUM(NSUInteger, KPResponseType) {
    KPResponseObject = 0,
    KPResponseArray = 1,
};


typedef NS_ENUM(NSUInteger, KPHTTPCachePolicy) {
    KPHTTPRequestReturnCacheDataNone           = 0,
    KPHTTPRequestReturnCacheDataThenLoad       = 1, //有缓存就先返回缓存，同步请求数据
    KPHTTPRequestReloadIngnoringLocalCacheData = 1 << 1, //忽略缓存，重新请求
    KPHTTPRequestReturnCacheDataElseLoad       = 1 << 2, //有缓存就用缓存，没有缓存就重新请求(用于数据不变时)
    KPHTTPRequestReturnCacheDataDontLoad       = 1 << 3, //有缓存就用缓存，没有缓存就不发请求，当做请求出错处理（用于离线模式）
};

@interface KPRequest : NSObject

@property (nonatomic, assign) JsonClassMethod classMethod;

@property (nonatomic, copy) NSString *className;

@property (nonatomic, assign) KPHTTPMethod HTTPMethod;

/** 请求参数 */
@property (nonatomic, strong) NSDictionary *parameters;

/** 上传文件 */
@property (nonatomic, strong) NSArray *files;

@property (nonatomic, assign) id delegate;

/** 是否显示默认提示 */
@property (nonatomic, assign) BOOL showTips;

/** 解析数据类型 */
@property (nonatomic, assign) KPResponseType type;

/** 关键字 */
@property (nonatomic, copy) NSString *keyword;

/** 缓存策略 */
@property (nonatomic, assign) KPHTTPCachePolicy cachePolicy;

- (instancetype)initWithClassMethod:(JsonClassMethod)classMethod
                         parameters:(NSDictionary *)parameters
                           delegate:(id)delegate;

- (instancetype)initWithClassMethod:(JsonClassMethod)classMethod
                         parameters:(NSDictionary *)parameters
                           delegate:(id)delegate
                          className:(NSString *)className;

- (instancetype)initWithClassMethod:(JsonClassMethod)classMethod
                         parameters:(NSDictionary *)parameters
                           delegate:(id)delegate
                          className:(NSString *)className
                         HTTPMethod:(KPHTTPMethod)HTTPMethod;

- (instancetype)initWithClassMethod:(JsonClassMethod)classMethod
                         parameters:(NSDictionary *)parameters
                           delegate:(id)delegate
                          className:(NSString *)className
                         HTTPMethod:(KPHTTPMethod)HTTPMethod
                              files:(NSArray *)files;

- (NSString *)method;


@end
