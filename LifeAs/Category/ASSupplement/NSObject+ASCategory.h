//
//  NSObject+ASCategory.h
//  CoomixMerchant
//
//  Created by Kowloon on 12-10-25.
//  Copyright (c) 2012年 Goome. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface NSObject (ASCategory)

- (BOOL)padDeviceModel;
- (BOOL)retinaDisplaySupported;
- (NSString *)deviceModel;

- (NSInteger)integerValueFromValue:(id)value;
- (BOOL)boolValueFromValue:(id)value;
- (NSString *)stringValueFromValue:(id)value;
- (NSDictionary *)dictionaryValueFromValue:(id)value;

- (void)standardUserDefaultsSetObject:(id)value forKey:(NSString *)key;
- (NSString *)bundleVersion;


@end
