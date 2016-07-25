//
//  ASGeometry.m
//  Library
//
//  Created by Kowloon on 12-12-7.
//  Copyright (c) 2012年 Personal. All rights reserved.
//

#import "ASGeometry.h"

NSString *NSStringFromCLLocationCoordinate2D(CLLocationCoordinate2D coordinate)
{
    return [NSString stringWithFormat:@"%f,%f",coordinate.latitude,coordinate.longitude];
}

CLLocationCoordinate2D CLLocationCoordinate2DFromNSString(NSString *string){
    NSArray *ll = [string componentsSeparatedByString:@","];
    if (ll.count == 2) {
        return CLLocationCoordinate2DMake([ll[0] floatValue], [ll[1] floatValue]);
    }else{
        return CLLocationCoordinate2DMake(0, 0);
    }
}

NSString *NSStringFromCGSize(CGSize size)
{
    return [NSString stringWithFormat:@"width:%lf\theight:%lf",size.width,size.height];
}