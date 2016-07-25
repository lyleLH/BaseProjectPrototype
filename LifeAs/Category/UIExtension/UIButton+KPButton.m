//
//  UIButton+KPButton.m
//  LHAppFramework
//
//  Created by lyle on 15/11/5.
//  Copyright © 2015年 lyleKP. All rights reserved.
//

#import "UIButton+KPButton.h"

@implementation UIButton (KPButton)



+ (UIButton *) lh_ButtonTarget:(id)target
                        action:(SEL)selector
                         title:(NSString *)title
                         Image:(UIImage *)image
                         frame:(CGRect)frame
                      forState:(UIControlState)stateType  {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setFrame:frame];
    return button;
}



/**
 *  上下布局的按钮，如 分享按钮
 *  文字在下，图片在上
 *
 */
+ (UIButton *) lh_creatButton:(CGRect)frame
                        Image:(UIImage *)image
                        Title:(NSString *)title
                     forState:(UIControlState)stateType {
    //UIEdgeInsetsMake(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right)
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setFrame:frame];
    
    CGSize titleSize = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12.0f]}];
    
    [button.imageView setContentMode:UIViewContentModeCenter];
    
    [button setImageEdgeInsets:UIEdgeInsetsMake(-15,
                                                0.0,
                                                0.0,
                                                -titleSize.width)];
    
    
    [button setImage:image forState:stateType];
    
    [button.titleLabel setContentMode:UIViewContentModeCenter];
    [button.titleLabel setBackgroundColor:[UIColor clearColor]];
    [button.titleLabel setFont:[UIFont systemFontOfSize:12]];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    //    [button.titleLabel setTextColor:[UIColor redColor]];
    
    [button setTitleEdgeInsets:UIEdgeInsetsMake(70.0,
                                                -image.size.width,
                                                -10,
                                                0.0)];
    [button setTitle:title forState:stateType];
    
    return button;
}


/**
 *  无图
 *  带边框
 *
 */
+ (UIButton *) lh_borderButtonTarget:(id)target
                              action:(SEL)selector
                               frame:(CGRect)frame
                               title:(NSString *)title
                            forState:(UIControlState)stateType {
    //UIEdgeInsetsMake(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right)
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setFrame:frame];
    
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [button.titleLabel setContentMode:UIViewContentModeCenter];
    button.titleLabel.textAlignment =1;
    [button.titleLabel setBackgroundColor:[UIColor clearColor]];
    [button.titleLabel setFont:[UIFont kp_bigTitleFont]];
    [button setTitleColor:[UIColor kp_themecolor] forState:UIControlStateNormal];
    [button setTitle:title forState:stateType];
    [button setBoundWidth:0.7 cornerRadius:5 boardColor:[UIColor kp_themecolor]];
    [button.titleLabel setTextColor:[UIColor kp_themecolor]];
    return button;
}
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
                            forState:(UIControlState)stateType  {
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setFrame:CGRectMake(frame.origin.x, frame.origin.y, SCREEN_WIDTH-40, 40)];
    
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [button.titleLabel setContentMode:UIViewContentModeCenter];
    button.titleLabel.textAlignment =1;
    [button.titleLabel setBackgroundColor:[UIColor clearColor]];
    [button.titleLabel setFont:[UIFont kp_bigTitleFont]];
    [button setTitleColor:[UIColor kp_btnWhiteColor] forState:UIControlStateNormal];
    [button setBoundWidth:0.7 cornerRadius:5 boardColor:[UIColor clearColor]];
    [button setTitle:title forState:stateType];
    [button setBackgroundColor:[UIColor kp_themecolor]];

    
    return button;
    
}
+ (UIButton *) lh_cornerRoundButtonTarget:(id)target
                                   action:(SEL)selector
                                    frame:(CGRect)frame
                                    title:(NSString *)title
                                 forState:(UIControlState)stateType  {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setFrame:CGRectMake(frame.origin.x, frame.origin.y, 95, 30)];
    
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [button.titleLabel setContentMode:UIViewContentModeCenter];
    button.titleLabel.textAlignment =1;
    [button.titleLabel setBackgroundColor:[UIColor clearColor]];
    [button.titleLabel setFont:[UIFont kp_auxiliaryTitleFont]];
    [button setTitleColor:[UIColor kp_btnWhiteColor] forState:UIControlStateNormal];
    [button setBoundWidth:0.7 cornerRadius:12 boardColor:[UIColor clearColor]];
    [button setTitle:title forState:stateType];
    [button setBackgroundColor:[UIColor kp_themecolor]];
    
    
    return button;
    
    
}

+ (UIButton *) lh_commonCornerRoundButtonTarget:(id)target
                                         action:(SEL)selector
                                          frame:(CGRect)frame
                                          title:(NSString *)title
                                       forState:(UIControlState)stateType {
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setFrame:frame];
    
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [button.titleLabel setContentMode:UIViewContentModeCenter];
    button.titleLabel.textAlignment =1;
    [button.titleLabel setBackgroundColor:[UIColor clearColor]];
    [button.titleLabel setFont:[UIFont kp_auxiliaryTitleFont]];
    [button setTitleColor:[UIColor kp_themecolor] forState:UIControlStateNormal];
    [button setBoundWidth:0.7 cornerRadius:8 boardColor:[UIColor kp_themecolor]];
    [button setTitle:title forState:stateType];
//    [button setBackgroundColor:[UIColor kp_themecolor]];
    
    
    return button;
    
}


/**
 *  订单界面不同状态的按钮
 */
- (void) lh_OrderButtonTarget:(id)target
                       action:(SEL)selector
                        frame:(CGRect)frame
                        title:(NSString *)title
              forControlState:(UIControlState)stateType {
    [self setBoundWidth:0.7 cornerRadius:5 boardColor:[UIColor kp_themecolor]];
    [self.titleLabel setTextColor:[UIColor kp_themecolor]];
    [self setFrame:frame];
    
    [self addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [self.titleLabel setContentMode:UIViewContentModeCenter];
    self.titleLabel.textAlignment =1;
    [self.titleLabel setBackgroundColor:[UIColor clearColor]];
    [self.titleLabel setFont:[UIFont kp_auxiliaryTitleFont]];
    [self setTitleColor:[UIColor kp_themecolor] forState:UIControlStateNormal];
    
    [self setTitle:title forState:stateType];
    
}



@end
