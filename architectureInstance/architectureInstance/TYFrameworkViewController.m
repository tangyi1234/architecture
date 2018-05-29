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

@end

@implementation TYFrameworkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}

- (void)initView {
    UIView *views = [UIView new];
    views.left = 10;
    views.top = 80;
    views.width = 200;
    views.height = 200;
    views.backgroundColor = [UIColor redColor];
    [self.view addSubview:views];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.left = 10;
    but.top = 290;
    but.width = 100;
    but.height = 30;
    but.backgroundColor = [UIColor yellowColor];
    [but setTitle:@"点击看看" forState:UIControlStateNormal];
    [self.view addSubview:but];
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
