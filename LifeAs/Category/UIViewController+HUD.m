//
//  UIViewController+HUD.m
//  BabyCamera
//
//  Created by Kowloon on 14-8-7.
//  Copyright (c) 2014年 Kowloon. All rights reserved.
//

#import "UIViewController+HUD.h"
#import "UIView+Toast.h"
#import "MBProgressHUD.h"
#import "YYKeyboardManager.h"
#import "KPResponse.h"
#import "UIView+ASCategory.h"
@implementation UIViewController (HUD)

- (void)showHUD{
    [self showHUDFromTitle:@"加载中..."];
}

- (void)showTip:(NSString *)tip{
    if (tip.length == 0) {
        return;
    }
    
    CGFloat time = 0;
    if ([[MBProgressHUD allHUDsForView:self.view] count] > 0) {
        time = .3;
    }
    
    id position = CSToastPositionCenter;
    
    CGFloat height = [YYKeyboardManager defaultManager].keyboardFrame.size.height;
    if (height > 0) {
        position = [NSValue valueWithCGPoint:CGPointMake(kWindowWidth/2, (CGRectGetHeight(self.view.frame) - height)/2)];
    }
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view makeToast:tip duration:3.0 position:position];
    });
    
}

- (void)showResult:(KPResponse *)result{
    if (![result isSuccess]) {
        NSString *message = result.code == KPNetworkHTTPFailed ? @"网络请求失败" : result.message;
        [self showTip:message];
    }
}

- (void)setHUDTitle:(NSString *)title{
    [MBProgressHUD HUDForView:self.view].labelText = title;
}

- (void)showScreenHUD{
    [self showScreenHUDWithTitle:@"加载中..."];
}

- (void)showScreenHUDWithTitle:(NSString *)title{
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.opacity = 1;
    HUD.mode = MBProgressHUDModeCustomView;
    HUD.color = [UIColor whiteColor];
    HUD.frame = self.view.bounds;
    HUD.cornerRadius = 0;
    HUD.margin = 0;
    HUD.graceTime = .5;
    HUD.taskInProgress = YES;
    
    UIView *customView = [[UIView alloc] initWithFrame:self.view.bounds];
    customView.backgroundColor = [UIColor whiteColor];
    UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [indicatorView startAnimating];
    indicatorView.center = customView.center;
    [customView addSubview:indicatorView];
    
    UILabel *titleLabel = [customView labelWithFrame:CGRectMake(0, CGRectGetMaxY(indicatorView.frame) + 5, CGRectGetWidth(customView.frame), 20) text:title textColor:[UIColor blackColor] textAlignment:NSTextAlignmentCenter font:[UIFont systemFontOfSize:13]];
    [customView addSubview:titleLabel];
    
    HUD.customView = customView;
    [self.view addSubview:HUD];
    [HUD show:YES];
    
    ASLog();
}

- (void)showHUDFromTitle:(NSString *)title{
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        if ([[MBProgressHUD allHUDsForView:self.view] count] == 0) {
            [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        }
        
        [self setHUDTitle:title];
    });
}

- (void)hideHUD{
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    });
}

@end
