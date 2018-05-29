//
//  TYFrameworkViewController.m
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/18.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYFrameworkViewController.h"
#import "UIView+add.h"
@interface TYFrameworkViewController ()
@property (nonatomic, weak) TYPlatformView *platformView;
@end

@implementation TYFrameworkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}

- (void)initView {
    
    TYPlatformView *platformView = [TYPlatformView new];
    platformView.left = 0;
    platformView.top = 100;
    platformView.width = w;
    platformView.height = h - 100;
    platformView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_platformView = platformView];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.left = 10;
    but.top = 64;
    but.width = 100;
    but.height = 30;
    but.backgroundColor = self.view.backgroundColor;
    [but setTitle:@"点击看看" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
    
}

- (void)selectorBut {
    [_platformView addViewLayoutModel:@""];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
