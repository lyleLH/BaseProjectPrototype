//
//  LHApiCategory.m
//  LifeAs
//
//  Created by lyleKP on 16/4/8.
//  Copyright © 2016年 lyleKP. All rights reserved.
//

#import "LHApiCategory.h"

@implementation LHApiCategory

+ (NSString *)identityCardApiStr:(NSString *) strIn  {
    
    return [NSString stringWithFormat:@"idservice/%@",strIn];
}


@end
