//
//  TYImageViewViewController.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/5.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYImageViewViewController.h"

@interface TYImageViewViewController ()
@property (nonatomic, weak) UIImageView *imageView;
@end

@implementation TYImageViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initImageView];
}

- (void)initImageView {
    UIImageView *imageView = [UIImageView new];
    imageView.left = 0;
    imageView.top = 40;
    imageView.width = w;
    imageView.height = h - 40;
    imageView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_imageView = imageView];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.left = 0;
    but.top = 64;
    but.width = 100;
    but.height = 30;
    but.backgroundColor = [UIColor yellowColor];
    [but setTitle:@"查看图片" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(requestWithImage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
}

- (void)requestWithImage {
    NSString *url = @"http://10.10.61.218:8080/name/12.png";
    NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    _imageView.image = [UIImage imageWithData:data];
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
