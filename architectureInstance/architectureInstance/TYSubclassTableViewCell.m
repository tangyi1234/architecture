//
//  TYSubclassTableViewCell.m
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/17.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYSubclassTableViewCell.h"

@implementation TYSubclassTableViewCell
+ (instancetype)addSubclassTableViewCell:(UITableView *)tableView {
    static NSString *ID = @"TYSubclassTableViewCell";
    TYSubclassTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[TYSubclassTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    return cell;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
