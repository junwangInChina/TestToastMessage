//
//  MainView.m
//  TestToastMessage
//
//  Created by wangjun on 13-12-14.
//  Copyright (c) 2013年 user. All rights reserved.
//

#import "MainView.h"

@interface MainView()
{
    UIButton *m_firstBtn;
    UIButton *m_secondBtn;
    UIButton *m_toastBtn;
}

@property (nonatomic, retain) UIButton *firstBtn;
@property (nonatomic, retain) UIButton *secondBtn;
@property (nonatomic, retain) UIButton *toastBtn;

@end

@implementation MainView
@synthesize firstBtn = m_firstBtn;
@synthesize secondBtn = m_secondBtn;
@synthesize toastBtn = m_toastBtn;

- (void)dealloc
{
    RELEASE_SAFETY(m_firstBtn);
    RELEASE_SAFETY(m_secondBtn);
    RELEASE_SAFETY(m_toastBtn);
    Block_release(m_block);
    
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.firstBtn = [CommonDeal createButtonWithFrame:CGRectMake(50, 50, 100, 35) andTitle:@"First" andTag:TAP_FIRSTPAGE];
        [self.firstBtn addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:m_firstBtn];
        
        self.secondBtn = [CommonDeal createButtonWithFrame:CGRectMake(170, 50, 100, 35) andTitle:@"Second" andTag:TAP_SECONDPAGE];
        [self.secondBtn addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:m_secondBtn];
        
        self.toastBtn = [CommonDeal createButtonWithFrame:CGRectMake(50, 100, 100, 30) andTitle:@"Toast" andTag:TAP_SHOWTOAST];
        [self.toastBtn addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:m_toastBtn];
    }
    return self;
}

- (void)registerCallBackBlock:(MainViewBlock)block_
{
    m_block = Block_copy(block_);
}

- (void)buttonPress:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    
    m_block(btn.tag);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
