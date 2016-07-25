//
//  BaseNavigationViewController+LHPushAnimation.h
//  kuparts3
//
//  Created by lyle on 15/8/19.
//  Copyright (c) 2015年 lyleLH. All rights reserved.
//

#import "BaseNavigationViewController.h"

@interface BaseNavigationViewController (LHPushAnimation)


- (void)lh_pushViewController: (UIViewController*)controller
    animatedWithTransition: (UIViewAnimationTransition)transition;

- (UIViewController*)lh_popViewControllerAnimatedWithTransition:(UIViewAnimationTransition)transition;


@end
