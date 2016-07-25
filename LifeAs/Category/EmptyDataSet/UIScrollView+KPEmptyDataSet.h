//
//  UIScrollView+KPEmptyDataSet.h
//  kuparts3
//
//  Created by 李久龙 on 16/4/26.
//  Copyright © 2016年 Kuparts. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIScrollView+EmptyDataSet.h"

@interface UIScrollView (KPEmptyDataSet) <DZNEmptyDataSetSource, DZNEmptyDataSetDelegate>

@property (nonatomic, strong) NSString *emptyTitle;

/** 默认空视图 */
- (void)kp_setupEmptyDataSet;

- (void)kp_setupEmptyDataSet:(NSString *)title emptyImage:(UIImage *)image tapBlock:(VoidBlock)tapBlock;

@end