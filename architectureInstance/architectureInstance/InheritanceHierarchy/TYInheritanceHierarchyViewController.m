//
//  TYInheritanceHierarchyViewController.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/7.
//  Copyright © 2018年 汤义. All rights reserved.
// 继承架构 ,这里是它的父类，用它来作为参考。

#import "TYInheritanceHierarchyViewController.h"
#import "TYInheritanceHierarchyTableViewCell.h"
#import "TYFrameworkModelLayout.h"

@interface TYInheritanceHierarchyViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArr;
@end

@implementation TYInheritanceHierarchyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTableView];
    [self uploadWithData];
}

- (void)initTableView {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, w, h) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"TYInheritanceHierarchyTableViewCell";
    TYInheritanceHierarchyTableViewCell *cell = [TYInheritanceHierarchyTableViewCell addWithInheritanceHierarchyTableViewCell:tableView ID:ID];
    [cell introductionWithData:_dataArr[indexPath.row] sliding:NO];
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
