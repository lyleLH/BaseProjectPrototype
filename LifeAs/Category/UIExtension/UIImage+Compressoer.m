//
//  UIImage+Compressoer.m
//  KPShop
//
//  Created by lyleKP on 15/11/19.
//  Copyright © 2015年 kuparts. All rights reserved.
//

#import "UIImage+Compressoer.h"

@implementation UIImage (Compressoer)


+ (UIImage *)lh_compressImage:(UIImage *)imgSrc
{
    CGSize size = {320, 480};
    UIGraphicsBeginImageContext(size);
    CGRect rect = {{0,0}, size};
    [imgSrc drawInRect:rect];
    UIImage *compressedImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return compressedImg;
}

@end
