//
//  KPRequestParameters.m
//  kuparts3
//
//  Created by 李久龙 on 16/3/24.
//  Copyright © 2016年 lyleLH. All rights reserved.
//

#import "KPRequest.h"

@implementation KPRequest

- (instancetype)init{
    if (self = [super init]) {
        self.HTTPMethod = KPHTTPMethodGet;
        self.showTips = YES;
        self.type = KPResponseObject;
    }
    
    return self;
}

- (instancetype)initWithClassMethod:(JsonClassMethod)classMethod
                         parameters:(NSDictionary *)parameters
                           delegate:(id)delegate
                          className:(NSString *)className
                         HTTPMethod:(KPHTTPMethod)HTTPMethod
                              files:(NSArray *)files{
    
    if (self = [self init]) {
        self.classMethod = classMethod;
        self.parameters = parameters;
        self.className = className;
        self.HTTPMethod = HTTPMethod;
        self.delegate = delegate;
        self.files = files;
    }
    
    return self;
}

- (instancetype)initWithClassMethod:(JsonClassMethod)classMethod
                         parameters:(NSDictionary *)parameters
                           delegate:(id)delegate
                          className:(NSString *)className
                         HTTPMethod:(KPHTTPMethod)HTTPMethod{
    return [[[self class] alloc] initWithClassMethod:classMethod parameters:parameters delegate:delegate className:className HTTPMethod:HTTPMethod files:nil];
}

- (instancetype)initWithClassMethod:(JsonClassMethod)classMethod
                         parameters:(NSDictionary *)parameters
                           delegate:(id)delegate
                          className:(NSString *)className{
    return [[[self class] alloc] initWithClassMethod:classMethod parameters:parameters delegate:delegate className:className HTTPMethod:KPHTTPMethodGet files:nil];
}

- (instancetype)initWithClassMethod:(JsonClassMethod)classMethod
                         parameters:(NSDictionary *)parameters
                           delegate:(id)delegate{
    return [[[self class] alloc] initWithClassMethod:classMethod parameters:parameters delegate:delegate className:nil HTTPMethod:KPHTTPMethodGet files:nil];
}

- (NSString *)method{
    return @[@"GET", @"POST"][_HTTPMethod];
}



@end
