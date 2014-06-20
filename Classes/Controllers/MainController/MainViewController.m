//
//  MainViewController.m
//  TestToastMessage
//
//  Created by wangjun on 13-12-14.
//  Copyright (c) 2013年 user. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface MainViewController ()
{
    MainView *m_mainView;
}

@property (nonatomic, retain) MainView *mainView;

@end

@implementation MainViewController
@synthesize mainView = m_mainView;

- (void)dealloc
{
    RELEASE_SAFETY(m_mainView);
    
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Main";
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    
    self.mainView = [[MainView alloc] initWithFrame:self.view.bounds];
    [self.mainView registerCallBackBlock:^(TapType type_){
        
        [self goToNextPage:type_];
    }];
    [self.view addSubview:self.mainView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)goToNextPage:(TapType)type
{
    switch (type)
    {
        case TAP_FIRSTPAGE:
        {
            FirstViewController *first = [[FirstViewController alloc] init];
            [self.navigationController pushViewController:first animated:YES];
            [first release];
        }
            break;
        case TAP_SECONDPAGE:
        {
            SecondViewController *second = [[SecondViewController alloc] init];
            [self.navigationController pushViewController:second animated:YES];
            [second release];
        }
            break;
        case TAP_SHOWTOAST:
        {
            //[CommonDeal showToast:@"test toast"];
            //[CommonDeal showToast:@"dsajdkafjkalfjakfjakfjaklf" andHeight:400];
            [CommonDeal showToast:@"123454121545214214234234234" afterDaily:5];
        }
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
