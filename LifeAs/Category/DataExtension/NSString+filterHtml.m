//
//  NSString+filterHtml.m
//  kuparts3
//
//  Created by lipeng on 15/8/24.
//  Copyright (c) 2015年 lyleLH. All rights reserved.
//

#import "NSString+filterHtml.h"

@implementation NSString (filterHtml)
+(NSString *)filterHTML:(NSString *)html{
    NSScanner * scanner = [NSScanner scannerWithString:html];
    NSString * text = nil;
    while([scanner isAtEnd]==NO)
    {
        //找到标签的起始位置
        [scanner scanUpToString:@"<" intoString:nil];
        //找到标签的结束位置
        [scanner scanUpToString:@">" intoString:&text];
        //替换字符
        html = [html stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>",text] withString:@""];
        html = [html stringByReplacingOccurrencesOfString:@"&nbsp;" withString:@""];
    }
    //NSString * regEx = @"<([^>]*)>";
    //html = [html stringByReplacingOccurrencesOfString:regEx withString:@""];
    return html;
}
@end
