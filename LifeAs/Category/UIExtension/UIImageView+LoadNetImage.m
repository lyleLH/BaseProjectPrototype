//
//  UIImageView+LoadNetImage.m
//  KPShop
//
//  Created by lyleKP on 15/11/13.
//  Copyright © 2015年 kuparts. All rights reserved.
//

#import "UIImageView+LoadNetImage.h"


@implementation UIImageView (LoadNetImage)




- (void)kp_netImage:(NSURL * )urlStr placeholderImage:(UIImage*)placeHolder {
    [self kp_netImage:urlStr placeholderImage:placeHolder completed:nil];
}

- (void)kp_netImage:(NSURL * )urlStr placeholderImage:(UIImage*)placeHolder completed:(SDWebImageCompletionBlock)completedBlock {

    [self sd_setImageWithURL:urlStr placeholderImage:placeHolder options:SDWebImageRetryFailed completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if(error) {
            ASLog(@"__UIImageView+LoadNetImage__%@",imageURL);
        }
        if(completedBlock) {
             completedBlock(image, error,cacheType, imageURL);
        }
       
        
    }];
}


@end
