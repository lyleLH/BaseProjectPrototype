//
//  UIButton+KPButton.h
//  LHAppFramework
//
//  Created by lyle on 15/11/5.
//  Copyright © 2015年 lyleKP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UISettingExtention.h"
@interface UIButton (KPButton)


/**
 *  纯图片 按钮
 *
 */

+ (UIButton *) lh_ButtonTarget:(id)target
                        action:(SEL)selector
                         title:(NSString *)title
                         Image:(UIImage *)image
                         frame:(CGRect)frame
                      forState:(UIControlState)stateType ;


/**
 *上下布局的按钮，如 分享按钮
 *
 */
+ (UIButton *) lh_creatButton:(CGRect)frame
                        Image:(UIImage *)image
                        Title:(NSString *)title
                     forState:(UIControlState)stateType;

/**
 *  带主题色边框的按钮
 *
 */

+ (UIButton *) lh_borderButtonTarget:(id)target
                              action:(SEL)selector
                               frame:(CGRect)frame
                               title:(NSString *)title
                            forState:(UIControlState)stateType ;



/**
 *  小圆角
 *  无边框
 *  正常状态－橙色底色按钮
 *  禁用状态－灰色色底色按钮
 */

+ (UIButton *) lh_commonButtonTarget:(id)target
                              action:(SEL)selector
                               frame:(CGRect)frame
                               title:(NSString *)title
                            forState:(UIControlState)stateType ;
/**
 *  大圆角
 *  无边框
 *  正常状态－橙色底色按钮
 *  禁用状态－灰色色底色按钮
 */

+ (UIButton *) lh_cornerRoundButtonTarget:(id)target
                              action:(SEL)selector
                               frame:(CGRect)frame
                               title:(NSString *)title
                            forState:(UIControlState)stateType ;

/**
 *  上架，下架按钮
 *
 *  @param target
 *  @param selector
 *  @param frame
 *  @param title
 *  @param stateType
 *
 *  @return
 */
+ (UIButton *) lh_commonCornerRoundButtonTarget:(id)target
                                   action:(SEL)selector
                                    frame:(CGRect)frame
                                    title:(NSString *)title
                                 forState:(UIControlState)stateType ;


/**
 *  订单界面不同状态的按钮
 */
- (void) lh_OrderButtonTarget:(id)target
                       action:(SEL)selector
                        frame:(CGRect)frame
                        title:(NSString *)title
              forControlState:(UIControlState)stateType;

@end
