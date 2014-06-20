//
//  ToastView.h
//  TestToastMessage
//
//  Created by wangjun on 13-12-14.
//  Copyright (c) 2013年 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToastView : UIView
{
    CGFloat _animationDurition;
}

@property (nonatomic, assign) CGFloat animationDurition;

- (void)show:(NSString *)toastMessage;

- (void)show:(NSString *)toastMessage andHeight:(CGFloat)height;

- (void)show:(NSString *)toastMessage afterDaily:(CGFloat)time;

@end
