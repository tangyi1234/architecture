//
//  TYFrameworkCellLayoutView.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/4.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYFrameworkCellLayoutView.h"
@interface TYFrameworkCellLayoutView()
@property (nonatomic, weak) UIImageView *imageView;
@property (nonatomic, weak) UILabel *lbl;
@property (nonatomic, weak) UITextField *textField;
@property (nonatomic, weak) UIButton *but;
@end
@implementation TYFrameworkCellLayoutView
+ (instancetype)addFrameworkCellLayoutView {
    TYFrameworkCellLayoutView *view = [TYFrameworkCellLayoutView new];
    [view initControl];
    return view;
}

- (void)initControl {
    UIImageView *imageView = [UIImageView new];
    [self addSubview:_imageView = imageView];
    
    UILabel *lbl = [UILabel new];
    lbl.font = [UIFont systemFontOfSize:14];
    lbl.textAlignment = NSTextAlignmentLeft;
    [self addSubview:_lbl = lbl];
    
    UITextField *textField = [UITextField new];
    [self addSubview:_textField = textField];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.backgroundColor = [UIColor redColor];
    [but setTitle:@"点击" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_but = but];
}

- (void)addWithLayout {
    
}

- (void)selectorBut {
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
