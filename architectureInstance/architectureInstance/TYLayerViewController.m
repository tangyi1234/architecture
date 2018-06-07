//
//  TYLayerViewController.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/6.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYLayerViewController.h"
#import "TYLayerPlatformView.h"
@interface TYLayerViewController ()
@property (nonatomic, weak) TYLayerPlatformView *layerView;
@end

@implementation TYLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initViewBut];
}

- (void)initViewBut {
    UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
    but1.left = 10;
    but1.top = 64;
    but1.width = 100;
    but1.height = 30;
    but1.backgroundColor = [UIColor redColor];
    [but1 setTitle:@"view" forState:UIControlStateNormal];
    [but1 addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but1];
    
    UIButton *but2 = [UIButton buttonWithType:UIButtonTypeCustom];
    but2.left = 120;
    but2.top = 64;
    but2.width = 100;
    but2.height = 30;
    but2.backgroundColor = [UIColor yellowColor];
    [but2 setTitle:@"layer" forState:UIControlStateNormal];
    [but2 addTarget:self action:@selector(selectorBut2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but2];
    

}

- (void)selectorBut {
    TYLayerPlatformView *layerView = [TYLayerPlatformView addLayerPlatformView];
    [layerView initView];
    [self.view addSubview:layerView];
}

- (void)selectorBut2 {
    TYLayerPlatformView *layerView = [TYLayerPlatformView addLayerPlatformView];
    [layerView initLayer];
    [self.view addSubview:layerView];
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
