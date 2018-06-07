//
//  TYFrameworkCellTableViewCell.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/4.
//  Copyright © 2018年 汤义. All rights reserved.
// 这里作为UI平台

#import "TYFrameworkCellTableViewCell.h"
#import "TYFrameworkCellLayoutView.h"
#import "TYFrameworkLogic.h"

@interface TYFrameworkCellTableViewCell()
@property (nonatomic, weak) TYFrameworkCellLayoutView *layoutView;
@end
@implementation TYFrameworkCellTableViewCell

+ (instancetype)addFrameworkCellTableViewCell:(UITableView *)tableView {
    static NSString *ID = @"TYFrameworkCellTableViewCell";
    TYFrameworkCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[TYFrameworkCellTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
        [cell initView];
    }
    return cell;
}

- (void)initView {
    TYFrameworkCellLayoutView *layoutView = [TYFrameworkCellLayoutView addFrameworkCellLayoutView];
    [self addSubview:_layoutView = layoutView];
}

- (void)introductionWithData:(TYFrameworkCellModel *)model sliding:(BOOL)sliding {
    _layoutView.left = 0;
    _layoutView.top = 0;
    _layoutView.width = w;
    _layoutView.height = [model.viewHeight floatValue];
    
    [_layoutView addWithLayoutModel:model];
    [TYFrameworkLogic addWithImageUrl:model sliding:sliding operationImage:^(NSString *urlStr) {
        [_layoutView addWithImageUrl:urlStr];
    }];
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
