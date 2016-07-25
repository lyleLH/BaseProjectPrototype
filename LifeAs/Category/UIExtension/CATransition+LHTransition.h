//
//  CATransition+LHTransition.h
//  kuparts3
//
//  Created by lyleKP on 15/9/16.
//  Copyright (c) 2015年 lyleLH. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CATransition (LHTransition)
+(CATransition *)getAnimation:(NSInteger)type subtype:(NSInteger)subtype;
@end
