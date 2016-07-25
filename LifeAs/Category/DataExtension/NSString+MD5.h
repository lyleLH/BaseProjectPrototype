//
//  NSString+MD5.h
//
//  Created by Mark on 15/11/21.
//  Copyright © 2015年 Mark. All rights reserved.
//

/**
 *  md5加密
 *
 */

#import <Foundation/Foundation.h>

@interface NSString (MD5)
/**
 *  md5加密的字符串
 *
 *  @param str
 *
 *  @return
 */
+ (NSString *) md5:(NSString *) str;

@end
