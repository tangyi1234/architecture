//
//  TYInheritanceHierarchyTableViewCell.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/7.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYInheritanceHierarchyTableViewCell.h"
#import "TYFrameworkCellLayoutView.h"
#import "TYFrameworkLogic.h"
@interface TYInheritanceHierarchyTableViewCell()
@property (nonatomic, weak) TYFrameworkCellLayoutView *layoutView;
@end
@implementation TYInheritanceHierarchyTableViewCell
+ (instancetype)addWithInheritanceHierarchyTableViewCell:(UITableView *)tableView ID:(NSString *)ID {
    TYInheritanceHierarchyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[TYInheritanceHierarchyTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
        [cell initView];
    }
    return cell;
}

//这一行代码必须和创建cell一起写入，不然就会出想乱序。
- (void)initView {
    TYFrameworkCellLayoutView *layoutView = [TYFrameworkCellLayoutView addFrameworkCellLayoutView];
    [self addSubview:_layoutView = layoutView];
}
/*
  这里就可以作为细化分方法，
  1.将布局可以单独分出来。
  2.将业务逻辑分出来。
 */
- (void)introductionWithData:(TYFrameworkCellModel *)model sliding:(BOOL)sliding {
    _layoutView.left = 0;
    _layoutView.top = 0;
    _layoutView.width = w;
    _layoutView.height = [model.viewHeight floatValue];
    
    [_layoutView addWithLayoutModel:model];
//    [TYFrameworkLogic addWithImageUrl:model sliding:sliding operationImage:^(NSString *urlStr) {
//        [_layoutView addWithImageUrl:urlStr];
//    }];
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
