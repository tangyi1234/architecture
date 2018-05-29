//
//  TYTableViewCell.m
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/17.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYTableViewCell.h"
@interface TYTableViewCell()
@property (nonatomic, weak) UILabel *textLbl;
@end

@implementation TYTableViewCell

+ (instancetype)uploadTYTableViewCell:(UITableView *)tableView {
    static NSString *ID = @"TYTableViewCell";
    TYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[TYTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
        [cell initView];
    }
    return cell;
}

- (void)initView {
    UILabel *textLbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 200, 44)];
    textLbl.textColor = [UIColor redColor];
    [self addSubview:_textLbl = textLbl];
}

- (void)transmitWithStr:(NSString *)str {
    _textLbl.text = str;
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
