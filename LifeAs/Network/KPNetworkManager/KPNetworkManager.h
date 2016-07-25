//
//  KPNetworkManager.h
//  kuparts3
//
//  Created by 李久龙 on 16/3/18.
//  Copyright © 2016年 lyleLH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KPNetworkConfig.h"
#import "KPResponse.h"
#import "KPRequest.h"
#import "KPNotificationName.h"


@interface KPNetworkManager : NSObject

+ (KPNetworkManager *)sharedManager;

- (void)requestWithClassMethod:(JsonClassMethod)classMethod
                    parameters:(NSDictionary *)parameters
                      delegate:(id)delegate
                 responseBlock:(KPResponseBlock)responseBlock;

- (void)requestWithClassMethod:(JsonClassMethod)classMethod
                    parameters:(NSDictionary *)parameters
                      delegate:(id)delegate
                    HTTPMethod:(KPHTTPMethod)HTTPMethod
                 responseBlock:(KPResponseBlock)responseBlock;

- (void)requestPostWithClassMethod:(JsonClassMethod)classMethod
                        parameters:(NSDictionary *)parameters
                          delegate:(id)delegate
                         className:(NSString *)className
                      responseType:(KPResponseType)responseType
                     responseBlock:(KPResponseBlock)responseBlock;
- (void)requestPostWithClassMethod:(JsonClassMethod)classMethod
                        parameters:(NSDictionary *)parameters
                          delegate:(id)delegate
                     responseBlock:(KPResponseBlock)responseBlock;

- (void)requestWithClassMethod:(JsonClassMethod)classMethod
                    parameters:(NSDictionary *)parameters
                      delegate:(id)delegate
                     className:(NSString *)className
                  responseType:(KPResponseType)responseType
                 responseBlock:(KPResponseBlock)responseBlock;

- (void)request:(KPRequest *)request
  responseBlock:(KPResponseBlock)responseBlock;

+ (void)cancelOperationsWithClass:(id)Class;

@end
