//
//  KPViewControllerNetworkIntercepter.m
//  kuparts3
//
//  Created by 李久龙 on 16/3/22.
//  Copyright © 2016年 lyleLH. All rights reserved.
//

#import "KPViewControllerNetworkIntercepter.h"
#import "Aspects.h"

@implementation KPViewControllerNetworkIntercepter

+ (void)load{
    [super load];
    
    [KPViewControllerNetworkIntercepter sharedInstance];
}

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    static KPViewControllerNetworkIntercepter *sharedInstance;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[KPViewControllerNetworkIntercepter alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        SEL sel = NSSelectorFromString(@"dealloc");
        [UIViewController aspect_hookSelector:sel withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo>aspectInfo){
            [self dealloc:[aspectInfo instance]];
        } error:NULL];
        
//        [UIViewController aspect_hookSelector:@selector(viewWillDisappear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo>aspectInfo, BOOL animated){
//            [self viewWillDisappear:animated viewController:[aspectInfo instance]];
//        } error:NULL];
        
    }
    return self;
}

- (void)viewWillDisappear:(BOOL)animated viewController:(UIViewController *)viewController{
    ASLog(@"%@", NSStringFromClass([viewController class]));
}

- (void)dealloc:(UIViewController *)viewController{
    ASLog(@"%@", NSStringFromClass([viewController class]));
    [KPNetworkManager cancelOperationsWithClass:viewController];
}

@end
