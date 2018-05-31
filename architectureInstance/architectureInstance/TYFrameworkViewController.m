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
@property (nonatomic, strong) TYInstanceDataModel *dataModel;
@property (nonatomic, strong) TYCalculateFrameModel *frameModel;
@end

@implementation TYFrameworkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self initView];
    [self updateSqlData];
    [self gainWithJsonData];
    [self initWithInstanceView];

}

- (void)initView {
    
//    TYPlatformView *platformView = [TYPlatformView new];
//    platformView.left = 0;
//    platformView.top = 100;
//    platformView.width = w;
//    platformView.height = h - 100;
//    platformView.backgroundColor = [UIColor greenColor];
//    [self.view addSubview:_platformView = platformView];
    
    TYPlatformView *platformView = [TYPlatformView addPlatformView];
    [self.view addSubview:_platformView = platformView];
    
    
//    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
//    but.left = 10;
//    but.top = 64;
//    but.width = 100;
//    but.height = 30;
//    but.backgroundColor = [UIColor redColor];
//    [but setTitle:@"点击看看" forState:UIControlStateNormal];
//    [but addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:but];
    
}

- (void)selectorBut {
    [_platformView addViewLayoutModel:@""];
}

- (void)initWithInstanceView {
    TYInstancePlatformView *view = [TYInstancePlatformView addInstancePlatformView:_updateArr[0] dataModel:_dataModel lblModel:_frameModel];
    [self.view addSubview:view];
}

//布局数据
- (void)updateSqlData {
    NSArray *dataArr = [TYJsonData addJsonDataStr:@"data.json"];
    _updateArr = [NSMutableArray array];
    for (NSDictionary *dic in dataArr) {
        TYInstancePlatformModel *model = [TYInstancePlatformModel addWithModelDic:dic];
        [_updateArr addObject:model];
    }
}

//内容数据
- (void)gainWithJsonData {
    NSArray *dataArr = [TYJsonData addJsonDataStr:@"contentData.json"];
    //首先进行数据布局的计算
    [self calculateWithLayou:dataArr[0]];
    //这是RunLoop等待机制
     [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
    
    _dataModel = [TYInstanceDataModel addWithModelDic:dataArr[0]];
}

- (void)calculateWithLayou:(NSDictionary *)dic {
    NSString *str = dic[@"textData"];
    // 并发队列的创建方法
    dispatch_queue_t queue = dispatch_queue_create("net.bujige.testQueue", DISPATCH_QUEUE_CONCURRENT);
    //异步执行
    dispatch_async(queue, ^{
        //textData
        CGSize size = [str sizeWithFont:[UIFont systemFontOfSize:14] constrainedToSize:CGSizeMake(300,2000)];
        //回归主线程中转模型
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSString *widthStr = [NSString stringWithFormat:@"%f",size.width];
            NSString *heightStr = [NSString stringWithFormat:@"%f",size.height];
            NSDictionary *dics = @{@"left":@"0",@"top":@"0",@"width":widthStr,@"height":heightStr};
            NSDictionary *dic = @{@"sizes":dics};
            _frameModel = [TYCalculateFrameModel addWithModelDic:dic];
//            while (pageStillLoading) {
           
//            }
        });
    });
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
