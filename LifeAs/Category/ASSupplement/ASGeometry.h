//
//  ASGeometry.h
//  Library
//
//  Created by Kowloon on 12-12-7.
//  Copyright (c) 2012年 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

NSString *NSStringFromCLLocationCoordinate2D(CLLocationCoordinate2D coordinate);
CLLocationCoordinate2D CLLocationCoordinate2DFromNSString(NSString *string);
NSString *NSStringFromCGSize(CGSize size);