//
//  TYInheritanceHierarchyTableViewCell.h
//  architectureInstance
//
//  Created by 汤义 on 2018/6/7.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYInheritanceHierarchyTableViewCell : UITableViewCell
+ (instancetype)addWithInheritanceHierarchyTableViewCell:(UITableView *)tableView ID:(NSString *)ID;
- (void)introductionWithData:(TYFrameworkCellModel *)model sliding:(BOOL)sliding;
- (void)controlWithButton:(BOOL)state;
@end
