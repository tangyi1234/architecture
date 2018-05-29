//
//  TYLayoutView.m
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/18.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYLayoutView.h"
@interface TYLayoutView()<UITextFieldDelegate>
@property (nonatomic, weak) UILabel *lbl;
@property (nonatomic, weak) UIButton *but;
@property (nonatomic, weak) UIImageView *imageView;
@property (nonatomic, weak) UITextField *textField;
@end

@implementation TYLayoutView
+ (instancetype)addLayoutView:(NSString *)str {
    //这里传进来的参数str，在实际的应该是我们布局位置的参数
    TYLayoutView *view = [TYLayoutView new];
    view.left = 10;
    view.top = 0;
    view.width = w;
    view.height = 300;
    [view initView:str];
    return view;
}

- (void)initView:(NSString *)str {
    UILabel *lbl = [UILabel new];
    lbl.left = 10;
    lbl.top = 10;
    lbl.width = 200;
    lbl.height = 30;
    lbl.font = [UIFont systemFontOfSize:14];
    lbl.textColor = [UIColor redColor];
    [self addSubview:_lbl=lbl];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.left = 10;
    but.top = lbl.top + lbl.height;
    but.width = 100;
    but.height = 30;
    but.backgroundColor = [UIColor yellowColor];
    [but setTitle:@"这是按钮" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_but = but];
    
    UIImageView *imageView = [UIImageView new];
    imageView.left = 10;
    imageView.top = but.top + but.height;
    imageView.width = 300;
    imageView.height = 50;
    imageView.backgroundColor = [UIColor orangeColor];
    [self addSubview:_imageView = imageView];
    
    UITextField *textField = [UITextField new];
    textField.left = 10;
    textField.top = imageView.top + imageView.height;
    textField.width = 300;
    textField.height = 50;
    textField.backgroundColor = [UIColor magentaColor];
    textField.delegate = self;
    [self addSubview:_textField = textField];
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
