//
//  UINavigationController+SafePushing.h
//  kuparts3
//
//  Created by lyleKP on 15/10/21.
//  Copyright © 2015年 lyleLH. All rights reserved.
//


/*
 *  how to use this file's method
 *
 * 
     id lock = yourViewController.navigationController.navigationLock;
     otherViewController *ovc = [[otherViewController alloc] init];
     [yourViewController.navigationController pushViewController:ovc animated:YES navigationLock:lock];

 *
 */

#import <UIKit/UIKit.h>

@interface UINavigationController (SafePushing)

- (id)navigationLock; ///< Obtain "lock" for pushing onto the navigation controller

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated navigationLock:(id)navigationLock; ///< Uses a horizontal slide transition. Has no effect if the view controller is already in the stack. Has no effect if navigationLock is not the current lock.
- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated navigationLock:(id)navigationLock; ///< Pops view controllers until the one specified is on top. Returns the popped controllers. Has no effect if navigationLock is not the current lock.
- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated navigationLock:(id)navigationLock; ///< Pops until there's only a single view controller left on the stack. Returns the popped controllers. Has no effect if navigationLock is not the current lock.




@end