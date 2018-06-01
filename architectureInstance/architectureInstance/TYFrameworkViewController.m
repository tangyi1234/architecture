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
#import "TYViewModelLayout.h"

@interface TYFrameworkViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) NSMutableArray *updateArr;
@property (nonatomic, strong) TYInstanceDataModel *dataModel;
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation TYFrameworkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self gainWithJsonData];
    [self initScrollView];
}

- (void)initScrollView {
    _scrollView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    _scrollView.delegate = self;
    [self.view addSubview:_scrollView];
}

- (void)initWithInstanceView {
    TYInstancePlatformView *view = [TYInstancePlatformView addInstanceDataModel:_dataModel];
    [_scrollView addSubview:view];
}


//内容数据
- (void)gainWithJsonData {
    /*
     这里在实际开发中其实是没有必要进行在后台来进行异步的计算，因为这个页面本来就运算量就小，在主线程中进行运算也是不会怎么影响操作效果的。也不会出现卡顿的情况，反而我们在这里开辟的新的线程这会导致我们的内存增加。
     如果有必要进行开辟新线程，那么操作流程是先运算在进行进行转模型。
     */
    [TYViewModelLayout addWithViewModelLayoutStr:@"contentData.json" callback:^(TYInstanceDataModel *model) {
        _dataModel = model;
        //
        CGSize size = CGSizeMake(w, 400 + [model.sizes[@"height"] floatValue] + 90);
        _scrollView.contentSize = size;
        [self initWithInstanceView];
    }];
  
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
