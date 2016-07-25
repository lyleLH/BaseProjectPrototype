//
//  UIImageView+LoadNetImage.h
//  KPShop
//
//  Created by lyleKP on 15/11/13.
//  Copyright © 2015年 kuparts. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"
//typedef void(^SDWebImageCompletionBlock)(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL);


@interface UIImageView (LoadNetImage)


- (void)kp_netImage:(NSURL * )urlStr placeholderImage:(UIImage*)placeHolder ;

- (void)kp_netImage:(NSURL * )urlStr placeholderImage:(UIImage*)placeHolder completed:(SDWebImageCompletionBlock)completedBlock;

@end
