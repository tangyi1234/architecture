//
//  TYCommonalityViewController.m
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/18.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYCommonalityViewController.h"
#import "ViewController.h"
#import "TYFrameworkViewController.h"
#import "TYFrameworkCellViewController.h"
#import "TYImageViewViewController.h"
#import "TYLayerViewController.h"
#import "TYInheritanceHierarchyUseViewController.h"

@interface TYCommonalityViewController ()

@end

@implementation TYCommonalityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}

- (void)initView {
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.frame = CGRectMake(10, 80, 100, 30);
    but.backgroundColor = [UIColor redColor];
    [but setTitle:@"继承" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
    
    UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
    but1.frame = CGRectMake(10, 120, 100, 30);
    but1.backgroundColor = [UIColor yellowColor];
    [but1 addTarget:self action:@selector(selectorBut1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but1];
    
    UIButton *but2 = [UIButton buttonWithType:UIButtonTypeCustom];
    but2.left = 10;
    but2.top = but1.top + but1.height + 10;
    but2.width = 100;
    but2.height = 30;
    but2.backgroundColor = [UIColor greenColor];
    [but2 setTitle:@"跳转到cell" forState:UIControlStateNormal];
    [but2 addTarget:self action:@selector(selectorBut2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but2];
    
    UIButton *but3 = [UIButton buttonWithType:UIButtonTypeCustom];
    but3.left = 10;
    but3.top = but2.top + but2.height;
    but3.width = 100;
    but3.height = 30;
    but3.backgroundColor = [UIColor orangeColor];
    [but3 setTitle:@"图片处理" forState:UIControlStateNormal];
    [but3 addTarget:self action:@selector(selectorBut3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but3];
    
    UIButton *but4 = [UIButton buttonWithType:UIButtonTypeCustom];
    but4.left = 10;
    but4.top = but3.top + but3.height + 10;
    but4.width = 100;
    but4.height = 30;
    but4.backgroundColor = [UIColor orangeColor];
    [but4 setTitle:@"验证" forState:UIControlStateNormal];
    [but4 addTarget:self action:@selector(selectorBut4) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but4];
    
    UIButton *but5 = [UIButton buttonWithType:UIButtonTypeCustom];
    but5.left = 10;
    but5.top = but4.top + but4.height + 10;
    but5.width = 100;
    but5.height = 30;
    but5.backgroundColor = [UIColor orangeColor];
    [but5 setTitle:@"继承架构" forState:UIControlStateNormal];
    [but5 addTarget:self action:@selector(selectorBut5) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but5];
}

- (void)selectorBut {
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)selectorBut1 {
    TYFrameworkViewController *vc = [[TYFrameworkViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)selectorBut2 {
    TYFrameworkCellViewController *vc = [[TYFrameworkCellViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)selectorBut3 {
    TYImageViewViewController *vc = [[TYImageViewViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)selectorBut4 {
    TYLayerViewController *vc = [[TYLayerViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)selectorBut5 {
    TYInheritanceHierarchyUseViewController *vc = [[TYInheritanceHierarchyUseViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
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
