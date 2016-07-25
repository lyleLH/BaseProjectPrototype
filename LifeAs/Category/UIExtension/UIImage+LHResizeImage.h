//
//  UIImage+LHResizeImage.h
//  KPShop
//
//  Created by lyleKP on 16/1/13.
//  Copyright © 2016年 kuparts. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LHResizeImage)

/**
 *   Resize an image
 *
 *  @param width  <#width description#>
 *  @param height <#height description#>
 *
 *  @return <#return value description#>
 */
- (UIImage*)transformWidth:(CGFloat)width
                    height:(CGFloat)height ;
@end
