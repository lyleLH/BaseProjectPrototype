
//  KPConstants.h
//
//  Created by Kowloon on 12-7-10.
//  Copyright (c) 2012年 Goome. All rights reserved.
//
#import <UIKit/UIKit.h>
#ifndef KPConstants_h
#define KPConstants_h

#define kWindowHeight CGRectGetHeight([UIScreen mainScreen].applicationFrame)
#define kWindowHeightWithoutNavigationBar (kWindowHeight - 44)
#define kWindowHeightWithoutNavigationBarAndTabbar (kWindowHeightWithoutNavigationBar - 49)
#define kWindowWidth CGRectGetWidth([UIScreen mainScreen].bounds)
#define kContentFrame CGRectMake(0, 0, kWindowWidth, 20 : kWindowHeight)

//#define kContentFrameWithoutNavigationBar CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), kWindowHeightWithoutNavigationBar)

#define kContentFrameWithoutNavigationBar kContentFrame

#define kContentFrameWithoutNavigationBarAndTabBar CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), kWindowHeightWithoutNavigationBarAndTabbar)


#define kUD [NSUserDefaults standardUserDefaults]

#define kDocumentPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]

#define kAppleID 934320453

#define kAppURL [NSString stringWithFormat:@"http://itunes.apple.com/app/id%d?mt=8",kAppleID]

#define ApplicationDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)

typedef void (^BOOLBlock)(BOOL result);
typedef void (^VoidBlock)(void);
typedef void (^DictionaryBlock)(NSDictionary *result);
typedef void (^ArrayBlock)(NSArray *result);
typedef void (^StringBlock)(NSString *result);
typedef void (^CountArrayBlock)(NSArray *result,NSString *count);
typedef void (^ModelBlock)(id result);

#define KPWeakObj(o) autoreleasepool{} __weak typeof(o) o##Weak = o;
#define KPStrongObj(o) autoreleasepool{} __strong typeof(o) o = o##Weak;

//#ifndef weakify_self
//#if __has_feature(objc_arc)
//#define weakify_self autoreleasepool{} __weak __typeof__(self) weakSelf = self;
//#else
//#define weakify_self autoreleasepool{} __block __typeof__(self) blockSelf = self;
//#endif
//#endif
//
//#ifndef strongify_self
//#if __has_feature(objc_arc)
//#define strongify_self try{} @finally{} __typeof__(weakSelf) self = weakSelf;
//#else
//#define strongify_self try{} @finally{} __typeof__(blockSelf) self = blockSelf;
//#endif
//#endif

#endif
