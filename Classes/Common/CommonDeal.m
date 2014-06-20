//
//  CommonDeal.m
//  TestToastMessage
//
//  Created by wangjun on 13-12-14.
//  Copyright (c) 2013年 user. All rights reserved.
//

#import "CommonDeal.h"

@implementation CommonDeal

+ (UIButton *)createButtonWithFrame:(CGRect)buttonFrame andTitle:(NSString *)buttonTitle andTag:(TapType)type_
{
    UIButton *button_ = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button_ setFrame:buttonFrame];
    [button_ setTitle:buttonTitle forState:UIControlStateNormal];
    [button_ setTag:type_];
    
    return button_;
}

+ (void)showToast:(NSString *)text
{
    ToastView *toastView = [[ToastView alloc] init];
    [toastView show:text];
    [toastView release];
}

+ (void)showToast:(NSString *)text andHeight:(CGFloat)height
{
    ToastView *toastView = [[ToastView alloc] init];
    [toastView show:text andHeight:height];
    [toastView release];
}

+ (void)showToast:(NSString *)text afterDaily:(CGFloat)time
{
    ToastView *toastView = [[ToastView alloc] init];
    [toastView show:text afterDaily:time];
    [toastView release];
}

@end
