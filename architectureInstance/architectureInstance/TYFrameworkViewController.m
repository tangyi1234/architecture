//
//  TYFrameworkViewController.m
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/18.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYFrameworkViewController.h"
#import "UIView+add.h"
#import "TYInstancePlatformView.h"
@interface TYFrameworkViewController ()
@property (nonatomic, weak) TYPlatformView *platformView;
@property (nonatomic, strong) NSMutableArray *updateArr;
@end

@implementation TYFrameworkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self initView];
    [self updateSqlData];
    [self initWithInstanceView];
}

- (void)initView {
    
    TYPlatformView *platformView = [TYPlatformView new];
    platformView.left = 0;
    platformView.top = 100;
    platformView.width = w;
    platformView.height = h - 100;
    platformView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_platformView = platformView];
    
//    TYPlatformView *platformView = [TYPlatformView addPlatformView];
//    [self.view addSubview:_platformView = platformView];
    
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.left = 10;
    but.top = 64;
    but.width = 100;
    but.height = 30;
    but.backgroundColor = [UIColor redColor];
    [but setTitle:@"点击看看" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
    
}

- (void)selectorBut {
    [_platformView addViewLayoutModel:@""];
}

- (void)initWithInstanceView {
    TYInstancePlatformView *view = [TYInstancePlatformView addInstancePlatformView:_updateArr[0]];
    [self.view addSubview:view];
}

//批量数据更新
- (void)updateSqlData {
    //JSON文件的路径
    NSString *path = [[NSBundle mainBundle] pathForResource:@"data.json" ofType:nil];
    //加载JSON文件
    NSData *data = [NSData dataWithContentsOfFile:path];
    //将JSON数据转为NSArray或NSDictionary
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    NSArray *dataArr = [NSArray arrayWithArray:dic[@"json"]];
    _updateArr = [NSMutableArray array];
    for (NSDictionary *dic in dataArr) {
        TYInstancePlatformModel *model = [TYInstancePlatformModel addWithModelDic:dic];
        [_updateArr addObject:model];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"清除内存");
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
