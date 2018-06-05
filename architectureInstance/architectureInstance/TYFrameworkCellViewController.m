//
//  TYFrameworkCellViewController.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/4.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYFrameworkCellViewController.h"
#import "TYFrameworkCellTableViewCell.h"
#import "TYFrameworkModelLayout.h"
#import "SKFFPSLabel.h"

@interface TYFrameworkCellViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArr;
@property (nonatomic, strong) SKFFPSLabel *SkfFPSLabel;
@end

@implementation TYFrameworkCellViewController
- (NSMutableArray *)dataArr {
    if (!_dataArr) {
        _dataArr = [NSMutableArray array];
    }
    return _dataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTableView];
    [self uploadWithData];
    [self startTheFPSLabel];
}

- (void)initTableView {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, w, h) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_tableView];
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TYFrameworkCellTableViewCell *cell = [TYFrameworkCellTableViewCell addFrameworkCellTableViewCell:tableView];
    [cell introductionWithData:_dataArr[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    TYFrameworkCellModel *model = _dataArr[indexPath.row];
    return [model.viewHeight floatValue];
}

#pragma mark -UIScrollView代理
// 当开始滚动视图时，执行该方法。一次有效滑动（开始滑动，滑动一小段距离，只要手指不松开，只算一次滑动），只执行一次。
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
    NSLog(@"scrollViewWillBeginDragging");
    
}

// 滑动scrollView，并且手指离开时执行。一次有效滑动，只执行一次。
// 当pagingEnabled属性为YES时，不调用，该方法
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    
    NSLog(@"scrollViewWillEndDragging//");
}

// 滑动视图，当手指离开屏幕那一霎那，调用该方法。一次有效滑动，只执行一次。
// decelerate,指代，当我们手指离开那一瞬后，视图是否还将继续向前滚动（一段距离），经过测试，decelerate=YES
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
    NSLog(@"scrollViewDidEndDragging");
    if (decelerate) {
        NSLog(@"decelerate");
    }else{
        NSLog(@"no decelerate");
        
    }
    
    CGPoint point=scrollView.contentOffset;
    NSLog(@"%f,%f",point.x,point.y);
    
}

// 滑动减速时调用该方法。
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    
    NSLog(@"scrollViewWillBeginDecelerating");
    // 该方法在scrollViewDidEndDragging方法之后。
}

// 滚动视图减速完成，滚动将停止时，调用该方法。一次有效滑动，只执行一次。
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    NSLog(@"scrollViewDidEndDecelerating");
    
//    [_scrollView setContentOffset:CGPointMake(0, 500) animated:YES];
}

- (void)uploadWithData {
    [TYFrameworkModelLayout addWithFrameworkModelLayoutStr:@"cellData.json" frameworkModel:^(NSMutableArray *mutableArr) {
        self.dataArr = mutableArr;
        [_tableView reloadData];
    }];
    
}

#pragma mark  配置SKFFPSLabel的方法
-(void)configureSKFFPSLabel{
    _SkfFPSLabel = [[SKFFPSLabel alloc]init];
    _SkfFPSLabel.frame = CGRectMake(10, 74, 50, 30);
    //    _SkfFPSLabel setb
    [self.view addSubview:_SkfFPSLabel];
    [self.view bringSubviewToFront:_SkfFPSLabel];
}
#pragma mark    开启FPS监测的方法
-(void)startTheFPSLabel{
    if (_SkfFPSLabel == nil) {
        [self configureSKFFPSLabel];
    }
}

#pragma mark    关闭FPS监测方法
-(void)closeTheFPSLabel{
    [_SkfFPSLabel SKFFPSstopDisplayLink];
    _SkfFPSLabel = nil;
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
