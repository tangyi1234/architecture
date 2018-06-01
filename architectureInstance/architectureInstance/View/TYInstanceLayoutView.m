//
//  TYInstanceLayoutView.m
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYInstanceLayoutView.h"

@implementation TYInstanceLayoutView
+ (instancetype)addInstanceLayoutView:(TYInstanceDataModel *)dataModel {
    TYInstanceLayoutView *view = [TYInstanceLayoutView new];
    view.left = 0;
    view.top = 0;
    view.width = 320;
    view.height = 400 + [dataModel.sizes[@"height"] floatValue] + 90;
    [view initViewDataModel:dataModel];
    return view;
}

- (void)initViewDataModel:(TYInstanceDataModel *)dataModel {
    UIImageView *imageView = [UIImageView new];
    imageView.left = 0;
    imageView.top = 0;
    imageView.width = w;
    imageView.height = 400;
    NSString *filePath=[[NSBundle mainBundle] pathForResource:dataModel.image ofType:@"png"];
    imageView.image = [UIImage imageNamed:filePath];
    [self addSubview:imageView];
    
    UILabel *lbl = [UILabel new];
    lbl.left = [dataModel.sizes[@"left"] floatValue];
    lbl.top = imageView.top + imageView.height + 10;
    lbl.width = [dataModel.sizes[@"width"] floatValue];
    lbl.height = [dataModel.sizes[@"height"] floatValue];
    lbl.numberOfLines = 0;
    lbl.text = dataModel.textData;
    lbl.font = [UIFont systemFontOfSize:14];
    [self addSubview:lbl];
    
    UITextField *textField = [UITextField new];
    textField.left = 0;
    textField.top = lbl.top + lbl.height + 10;
    textField.width = 200;
    textField.height = 50;
    textField.backgroundColor = [UIColor yellowColor];
    [self addSubview:textField];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.left = textField.left + textField.width;
    but.top = lbl.top + lbl.height + 10;
    but.width = 100;
    but.height = 50;
    but.backgroundColor = [UIColor redColor];
    [but setTitle:@"按钮" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:but];
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
