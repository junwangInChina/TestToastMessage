//
//  MainView.h
//  TestToastMessage
//
//  Created by wangjun on 13-12-14.
//  Copyright (c) 2013年 user. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^MainViewBlock)(TapType type);

@interface MainView : UIView
{
    MainViewBlock m_block;
}

- (void)registerCallBackBlock:(MainViewBlock)block_;

@end
