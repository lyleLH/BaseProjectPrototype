//
//  KPNetworkManager.m
//  kuparts3
//
//  Created by 李久龙 on 16/3/18.
//  Copyright © 2016年 lyleLH. All rights reserved.
//

#import "KPNetworkManager.h"
#import "AFNetworking.h"
#import "JsonRequestClassVerify.h"
#import "KPNetSetting.h"
#import <YYCache/YYCache.h>
#import "NSDictionary+ASCategory.h"

@interface KPNetworkManager ()

@property (nonatomic, strong) NSArray *classes;

@end

@implementation KPNetworkManager

- (instancetype)init{
    if (self = [super  init]) {
        self.classes = @[@(kClassMethod_ProductList),
                         @(kClassMethod_ProductDetails),
                         @(kClassMethod_ProductStock),
                         @(kClassMethod_ProductClassify),
                         ];
    }
    
    return self;
}

+ (KPNetworkManager *)sharedManager{
    static KPNetworkManager *sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (NSString *)urlStringFromPath:(NSString *)path{
    
    return @"";
}

+ (void)cancelOperationsWithClass:(id)Class{
    [[AFHTTPSessionManager manager].operationQueue cancelAllOperations];
}

- (void)requestPostWithClassMethod:(JsonClassMethod)classMethod
                    parameters:(NSDictionary *)parameters
                      delegate:(id)delegate
                    responseBlock:(KPResponseBlock)responseBlock{
    [self requestWithClassMethod:classMethod parameters:parameters delegate:self HTTPMethod:KPHTTPMethodPost responseBlock:responseBlock];
}

- (void)requestPostWithClassMethod:(JsonClassMethod)classMethod
                    parameters:(NSDictionary *)parameters
                      delegate:(id)delegate
                     className:(NSString *)className
                  responseType:(KPResponseType)responseType
                 responseBlock:(KPResponseBlock)responseBlock{
    [self requestWithClassMethod:classMethod parameters:parameters delegate:delegate HTTPMethod:KPHTTPMethodPost className:className responseType:responseType responseBlock:responseBlock];
}

- (void)requestWithClassMethod:(JsonClassMethod)classMethod
                    parameters:(NSDictionary *)parameters
                      delegate:(id)delegate
                     className:(NSString *)className
                  responseType:(KPResponseType)responseType
                 responseBlock:(KPResponseBlock)responseBlock{
    [self requestWithClassMethod:classMethod parameters:parameters delegate:delegate HTTPMethod:KPHTTPMethodGet className:className responseType:responseType responseBlock:responseBlock];
}

- (void)requestWithClassMethod:(JsonClassMethod)classMethod
                    parameters:(NSDictionary *)parameters
                      delegate:(id)delegate
                    HTTPMethod:(KPHTTPMethod)HTTPMethod
                     className:(NSString *)className
                  responseType:(KPResponseType)responseType
                 responseBlock:(KPResponseBlock)responseBlock{
    KPRequest *request = [[KPRequest alloc] initWithClassMethod:classMethod parameters:parameters delegate:delegate className:className HTTPMethod:HTTPMethod];
    request.type = responseType;
    [self request:request responseBlock:responseBlock];
}

- (void)requestWithClassMethod:(JsonClassMethod)classMethod
                    parameters:(NSDictionary *)parameters
                      delegate:(id)delegate
                 responseBlock:(KPResponseBlock)responseBlock{
    [self requestWithClassMethod:classMethod parameters:parameters delegate:self HTTPMethod:KPHTTPMethodGet responseBlock:responseBlock];
}

- (void)requestWithClassMethod:(JsonClassMethod)classMethod
                    parameters:(NSDictionary *)parameters
                      delegate:(id)delegate
                    HTTPMethod:(KPHTTPMethod)HTTPMethod
                 responseBlock:(KPResponseBlock)responseBlock{
    [self requestWithClassMethod:classMethod parameters:parameters delegate:delegate HTTPMethod:HTTPMethod className:nil responseType:0 responseBlock:responseBlock];
}

- (void)request:(KPRequest *)request
  responseBlock:(KPResponseBlock)responseBlock{
    
    NSString *method = request.method;
    
    NSString *URLString = [JsonRequestClassVerify getClassMethod:request.classMethod];
    
    YYCache *cache = [[YYCache alloc] initWithName:@"KPLastRequest"];
    
    NSString *cacheKey = URLString;
    if (request.parameters && [NSJSONSerialization isValidJSONObject:request.parameters]) {
        NSData *data          = [NSJSONSerialization dataWithJSONObject:request.parameters options:NSJSONWritingPrettyPrinted error:nil];
        NSString *paramString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        cacheKey              = [URLString stringByAppendingString:paramString];
    }
    
    if (request.cachePolicy != KPHTTPRequestReturnCacheDataNone) {
        id object = [cache objectForKey:cacheKey];
        KPResponse *cacheResponse = [[KPResponse alloc] initWithResult:object request:request];
        cacheResponse.cache = YES;
        switch (request.cachePolicy) {
            case KPHTTPRequestReturnCacheDataThenLoad:
                if (object) {
                    responseBlock(cacheResponse);
                }
                break;
            case KPHTTPRequestReloadIngnoringLocalCacheData:
                break;
            case KPHTTPRequestReturnCacheDataElseLoad:
                if (object) {
                    responseBlock(cacheResponse);
                }
                break;
            case KPHTTPRequestReturnCacheDataDontLoad:
                if (object) {
                    responseBlock(cacheResponse);
                }
                return;
                break;
            default:
                break;
        }
    }
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    // 设置超时时间
    [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    manager.requestSerializer.timeoutInterval = kTimeoutInterval;
    [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    [manager.requestSerializer setValue:@"KuParts-Web-API" forHTTPHeaderField:@"X-Message-Sender"];
    [manager.requestSerializer setValue:@"2" forHTTPHeaderField:@"PlatformType"];
    [manager.requestSerializer setValue:@"0" forHTTPHeaderField:@"FromApp"];
//    [manager.requestSerializer setValue:[LHAppUser shareInstance].ipAddress forHTTPHeaderField:@"IP"];
    
    __block NSMutableDictionary *param = [[NSMutableDictionary  alloc] initWithDictionary:request.parameters];
//    [param setValue:[self bundleVersion] forKey:@"AppVersion"];
//    [param setValue:@"2" forKey:@"PlatformType"];
    [param setValue:@"0" forKey:@"FromApp"];

    __block NSMutableURLRequest *urlRequest = [manager.requestSerializer requestWithMethod:method URLString:[[NSURL URLWithString:URLString relativeToURL:manager.baseURL] absoluteString] parameters:param error:nil];
    
    __block NSURLSessionDataTask *task = [manager dataTaskWithRequest:urlRequest completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (responseBlock) {
            
            ASLog(@"\n%@ %@\n%@\n%@\n%@",method, error ? @"Error" : @"Success", URLString, [param kp_description], error ? error : [responseObject kp_description]);
            KPResponse *response = nil;
            if (error) {
                if (error.code == -1011) {
                    ASLog();
                }
                response = [[KPResponse alloc] init];
//                response.code = error.code;
//                response.message = error.localizedDescription;
                response.code = KPNetworkHTTPFailed;
                response.message = kDefaultErrorTips;
            }else{
                if (request.cachePolicy != KPHTTPRequestReturnCacheDataNone) {
                    [cache setObject:responseObject forKey:cacheKey];
                }
                response = [[KPResponse alloc] initWithResult:responseObject request:request];
            }
            
            if ([response isLogout]) {
                [[NSNotificationCenter defaultCenter] postNotificationName:KPLandingAnomaly object:nil];
            }else if (request.showTips
                && [URLString rangeOfString:@"AutoMessage"].location == NSNotFound
                && [URLString rangeOfString:@"AutoMsg"].location == NSNotFound) {
                [[UIViewController topViewController] showResult:response];
            }
            
            responseBlock(response);
        }
    }];
    [task resume];
    
    
//    AFHTTPRequestOperation *operation = [manager HTTPRequestOperationWithRequest:request success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        if (resultBlock) {
//            KPResult *result = [[KPResult alloc] initWithResult:responseObject];
//            resultBlock(result);
//        }
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        if (resultBlock) {
//            KPResult *result = [[KPResult alloc] init];
//            result.code = error.code;
//            result.message = error.localizedDescription;
//            resultBlock(result);
//        }
//    }];
//    
//    [manager.operationQueue addOperation:operation];
}

@end
