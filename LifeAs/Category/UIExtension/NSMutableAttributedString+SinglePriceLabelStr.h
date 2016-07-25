//
//  NSMutableAttributedString+SinglePriceLabelStr.h
//  KPShop
//
//  Created by lyleKP on 15/11/12.
//  Copyright © 2015年 kuparts. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (SinglePriceLabelStr)

+ (NSMutableAttributedString*)lh_Price48pxStr:(NSString *)aStr;
+ (NSMutableAttributedString*)lh_Price36pxStr:(NSString *)aStr;

+ (NSMutableAttributedString*)lh_Price24pxGrayStr:(NSString *)aStr ;


+ (NSMutableAttributedString*)lh_Price28pxDarkStr:(NSString *)aStr;

@end
