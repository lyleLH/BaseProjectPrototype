//
//  UIScrollView+KPEmptyDataSet.m
//  kuparts3
//
//  Created by 李久龙 on 16/4/26.
//  Copyright © 2016年 Kuparts. All rights reserved.
//

#import "UIScrollView+KPEmptyDataSet.h"


static char const *const kEmptyTitle = "emptyTitle";
static char const *const kEmptyImage = "emptyImage";
static char const *const kEmptyTapBlock = "tapBlock";

@interface UIScrollView ()

@property (nonatomic, strong) UIImage *emptyImage;
@property (nonatomic, copy) VoidBlock tapBlock;

@end

@implementation UIScrollView (KPEmptyDataSet)

- (NSString *)emptyTitle{
    return objc_getAssociatedObject(self, kEmptyTitle);
}

- (NSString *)emptyImage{
    return objc_getAssociatedObject(self, kEmptyImage);
}

- (VoidBlock)tapBlock{
    return objc_getAssociatedObject(self, kEmptyTapBlock);
}

- (void)kp_setupEmptyDataSet{
    self.emptyDataSetSource = self;
    self.emptyDataSetDelegate = self;
}

- (void)kp_setupEmptyDataSet:(NSString *)title emptyImage:(UIImage *)image tapBlock:(VoidBlock)tapBlock{
    self.emptyTitle = title;
    self.emptyImage = image;
    self.tapBlock = tapBlock;
    [self kp_setupEmptyDataSet];
}

- (void)setEmptyTitle:(NSString *)emptyTitle{
    if (emptyTitle.length == 0) {
        return;
    }
    objc_setAssociatedObject(self, kEmptyTitle, emptyTitle, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self reloadEmptyDataSet];
}

- (void)setEmptyImage:(UIImage *)emptyImage{
    if (!emptyImage) {
        return;
    }
    objc_setAssociatedObject(self, kEmptyImage, emptyImage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self reloadEmptyDataSet];
}

- (void)setTapBlock:(VoidBlock)tapBlock{
    if (!tapBlock) {
        return;
    }
    objc_setAssociatedObject(self, kEmptyTapBlock, tapBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}


- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView{
    UIImage *image = self.emptyImage;
    return image ? image : [UIImage imageNamed:@"icon_tip_bg"];
}

- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView{
    NSString *text = self.emptyTitle.length == 0 ? @"暂无数据" : self.emptyTitle;
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont boldSystemFontOfSize:14.0f],
                                 NSForegroundColorAttributeName: RGBColor(204, 204, 204)};
    return [[NSAttributedString alloc] initWithString:text attributes:attributes];
}

- (CGFloat)verticalOffsetForEmptyDataSet:(UIScrollView *)scrollView{
    return -30;
}

- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView{
    return YES;
}

- (void)emptyDataSet:(UIScrollView *)scrollView didTapView:(UIView *)view{
    if (self.tapBlock) {
        self.tapBlock();
    }
}

@end
