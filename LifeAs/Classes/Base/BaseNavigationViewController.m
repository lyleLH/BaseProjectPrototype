//
//  BaseNavigationViewController.m
//  LifeAs
//
//  Created by lyleKP on 16/7/25.
//  Copyright © 2016年 lyleKP. All rights reserved.
//

#import "BaseNavigationViewController.h"

@interface BaseNavigationViewController () 

@end

@implementation BaseNavigationViewController


+ (void)initialize {
    
    UINavigationBar *naviBar = [UINavigationBar appearance];
    [naviBar setBarTintColor:[UIColor kp_themecolor]];
    NSMutableDictionary *textNomalAttributesDic =
    [[NSMutableDictionary alloc] init];
    textNomalAttributesDic[NSForegroundColorAttributeName] = [UIColor whiteColor];
    textNomalAttributesDic[NSFontAttributeName] = [UIFont lh_naviTitleFont];
    [naviBar setTitleTextAttributes:textNomalAttributesDic];
    [naviBar setTintColor:[UIColor whiteColor]];
    if (IOS_VERSION < 8.0f) {
        
    } else {
        naviBar.translucent = NO;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/**
 *  重写导航栏控制push方法,重写此方法对控制器没有“侵入性”
 *
 *  @param viewController 拦截调用此方法的控制器，并对其进行设置
 */

- (void)pushViewController:(UIViewController *)viewController
                  animated:(BOOL)animated {
    
    if (self.viewControllers.count >
        0) { //所有根控制器的下一级控制器的导航栏左右两侧按钮样式一致
        viewController.navigationItem.leftBarButtonItem =
        [UIBarButtonItem itemWithTarget:self
                                 action:@selector(back)
                                  image:@"naviBarBack"
                          selectedImage:@"naviBarBack"];
        viewController.hidesBottomBarWhenPushed = YES;
        
    } else {
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)setViewControllers:(NSArray<UIViewController *> *)viewControllers animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        UIViewController *viewController = [viewControllers lastObject];
        viewController.navigationItem.leftBarButtonItem =
        [UIBarButtonItem itemWithTarget:self
                                 action:@selector(back)
                                  image:@"naviBarBack"
                          selectedImage:@"naviBarBack"];
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super setViewControllers:viewControllers animated:animated];
}

- (void)back {
    [self popViewControllerAnimated:YES];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
