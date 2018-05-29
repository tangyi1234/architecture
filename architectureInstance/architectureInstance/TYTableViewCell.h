//
//  TYTableViewCell.h
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/17.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYTableViewCell : UITableViewCell
+ (instancetype)uploadTYTableViewCell:(UITableView *)tableView;
- (void)transmitWithStr:(NSString *)str;
@end
