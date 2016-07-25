//
//  BaseViewController.m
//  LifeAs
//
//  Created by lyleKP on 16/7/25.
//  Copyright © 2016年 lyleKP. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController () <UINavigationControllerDelegate>

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#warning 注册这里是 willShowViewController 不是didShow
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if ([viewController isKindOfClass:[self class]]) {
        [navigationController setNavigationBarHidden:YES animated:YES];
    }else {
        [navigationController setNavigationBarHidden:NO animated:YES];
    }
}


@end
