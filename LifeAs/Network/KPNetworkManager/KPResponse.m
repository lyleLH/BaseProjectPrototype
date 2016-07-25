//
//  KPResult.m
//  kuparts3
//
//  Created by 李久龙 on 16/3/21.
//  Copyright © 2016年 lyleLH. All rights reserved.
//

#import "KPResponse.h"
#import "KPRequest.h"
#import "NSDictionary+ASCategory.h"
#import <MJExtension/MJExtension.h>

@implementation KPResponse

- (instancetype)initWithResult:(NSDictionary *)result request:(KPRequest *)request{
    if (![result isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    
    if (self = [super init]) {
//        self.sourceResult = result;
        
        if ([result.allKeys containsObject:@"code"]) {
            self.code = [result getIntValueForKey:@"code" defaultValue:-1];
            self.message = [result getStringValueForKey:@"msg" defaultValue:@""];
            self.data = result[@"data"];
        }else{
            self.code = [result getIntValueForKey:@"ReturnCode" defaultValue:-1];
            self.message = [result getStringValueForKey:@"ReturnMessage" defaultValue:@""];
            self.data = result[@"ReturnData"];
        }
        
        if (![self isSuccess]){
            return self;
        }
        
        if (request.className.length > 0) {
            Class class = NSClassFromString(request.className);
            NSAssert(class, @"Class Not Exists");
            
            __block id data = _data;
            if (request.keyword.length > 0) {
                data = _data[request.keyword];
            }else if (request.type == KPResponseArray) {
                
                NSArray *defaults = @[@"list", @"lists", @"items", @"productlist", @"products", @"categoryList", @"appraiseDetailItem", @"oilPriceItem", @"mtl_mtd_list", @"brandItem", @"seriesList", @"breedYearItem",@"voucherGiveOut",@"quotations"];
                
                [defaults enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    if ([_data.allKeys containsObject:obj] ) {
                        data = _data[obj];
                        *stop = YES;
                    }
                }];
            }
            
//            NSAssert(data, @"Response keyword None!");
            
            if (data == nil || [data isEqual:[NSNull null]]) {
                data = request.type == KPResponseObject ? @{} : @[];
            }
            
            self.result = request.type == KPResponseObject ? [class mj_objectWithKeyValues:data] : [class mj_objectArrayWithKeyValuesArray:data];
            
            NSAssert(_result, @"Parse error!");
        }
    }
    
    return self;
}

- (BOOL)isSuccess{
    return _code == KPNetworkSuccess;
}

- (BOOL)isLogout{
    return _code == 1006;
}

@end
