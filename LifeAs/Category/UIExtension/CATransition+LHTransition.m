//
//  CATransition+LHTransition.m
//  kuparts3
//
//  Created by lyleKP on 15/9/16.
//  Copyright (c) 2015年 lyleLH. All rights reserved.
//

#import "CATransition+LHTransition.h"

@implementation CATransition (LHTransition)

+(CATransition *)getAnimation:(NSInteger)type subtype:(NSInteger)subtype{
    CATransition *animation = [CATransition animation];
    animation.duration = 0.35;
//    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];

    
    switch (type) {
        case 1:
            animation.type = kCATransitionFade;
            break;
        case 2:
            animation.type = kCATransitionPush;
            break;
        case 3:
            animation.type = kCATransitionReveal;
            break;
        case 4:
            animation.type = kCATransitionMoveIn;
            break;
        case 5:
            animation.type = @"cube";
            break;
        case 6:
            animation.type = @"suckEffect";
            break;
        case 7:
            animation.type = @"oglFlip";
            break;
        case 8:
            animation.type = @"rippleEffect";//波纹
            break;
        case 9:
            animation.type = @"pageCurl";
            break;
        case 10:
            animation.type = @"pageUnCurl";
            break;
        case 11:
            animation.type = @"cameraIrisHollowOpen";
            break;
        case 12:
            animation.type = @"cameraIrisHollowClose";
            break;
        default:
            animation.type = kCATransitionFade;
            break;
    }
    switch (subtype) {
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            animation.subtype = kCATransitionFromLeft;
            break;
    }
    return animation;
}
@end
