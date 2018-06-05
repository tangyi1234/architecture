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
