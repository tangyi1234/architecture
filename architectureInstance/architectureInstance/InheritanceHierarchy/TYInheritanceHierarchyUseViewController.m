//
//  TYInheritanceHierarchyUseViewController.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/7.
//  Copyright © 2018年 汤义. All rights reserved.
// 使用到的架构中的继承的子类

#import "TYInheritanceHierarchyUseViewController.h"
#import "TYInheritanceHierarchyUseTableViewCell.h"

@interface TYInheritanceHierarchyUseViewController ()

@end

@implementation TYInheritanceHierarchyUseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"TYInheritanceHierarchyUseTableViewCell";
    TYInheritanceHierarchyUseTableViewCell *cell = [TYInheritanceHierarchyUseTableViewCell addWithInheritanceHierarchyTableViewCell:tableView ID:ID];
    return cell;
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
