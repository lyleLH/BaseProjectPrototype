//
//  KPResult.h
//  kuparts3
//
//  Created by 李久龙 on 16/3/21.
//  Copyright © 2016年 lyleLH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KPNetworkConfig.h"
#import <MJExtension/MJExtension.h>

@class KPRequest;
@interface KPResponse : NSObject

@property (assign, nonatomic) NSInteger code;

@property (copy, nonatomic) NSString *message;

@property (strong, nonatomic) NSDictionary *data;

//@property (strong, nonatomic) NSDictionary *sourceResult;
@property (assign, nonatomic) BOOL cache;

/** 解析后的对象/数组 */
@property (strong, nonatomic) id result;

- (instancetype)initWithResult:(NSDictionary *)result request:(KPRequest *)request;

- (BOOL)isSuccess;
- (BOOL)isLogout;


@end
