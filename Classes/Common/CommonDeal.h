//
//  CommonDeal.h
//  TestToastMessage
//
//  Created by wangjun on 13-12-14.
//  Copyright (c) 2013年 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToastView.h"

@interface CommonDeal : NSObject

#define DEVICE [[[UIDevice currentDevice] systemVersion] intValue]

#define IOS7   DEVICE > 7.0
#define IOS6   DEVICE > 6.0

#ifdef IOS6
#define UILINEBREAKMODEWORDWRAP NSLineBreakByWordWrapping
#else
#define UILINEBREAKMODEWORDWRAP UILineBreakModeWordWrap
#endif


/**
 *	@brief  安全释放目标对象
 */
#define RELEASE_SAFETY(__POINTER) { [__POINTER release]; __POINTER = nil; }

/**
 *  @brief 点击类型枚举
 */
typedef enum{
    TAP_FIRSTPAGE = 10010,
    TAP_SECONDPAGE,
    TAP_SHOWTOAST
}TapType;

+ (UIButton *)createButtonWithFrame:(CGRect)buttonFrame andTitle:(NSString *)buttonTitle andTag:(TapType)type_;

+ (void)showToast:(NSString *)text;

+ (void)showToast:(NSString *)text andHeight:(CGFloat)height;

+ (void)showToast:(NSString *)text afterDaily:(CGFloat)time;

@end
