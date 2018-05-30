//
//  TYInstanceLayoutView.m
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYInstanceLayoutView.h"

@implementation TYInstanceLayoutView
+ (instancetype)addInstanceLayoutView:(TYInstancePlatformModel *)model {
    TYInstanceLayoutView *view = [TYInstanceLayoutView new];
    view.left = 0;
    view.top = 0;
    view.width = 320;
    view.height = 500;
    [view initViewModel:model];
    return view;
}

- (void)initViewModel:(TYInstancePlatformModel *)model {
    UIImageView *imageView = [UIImageView new];
    imageView.left = [model.imageDic[@""] floatValue];
    imageView.top = [model.imageDic[@""] floatValue];
    imageView.width = [model.imageDic[@""] floatValue];
    imageView.height = [model.imageDic[@""] floatValue];
    [self addSubview:imageView];
    
    UILabel *lbl = [UILabel new];
    lbl.left = [model.lblDic[@""] floatValue];
    lbl.top = imageView.top + imageView.height + 10;
    lbl.width = [model.lblDic[@""] floatValue];
    lbl.height = [model.lblDic[@""] floatValue];
    [self addSubview:lbl];
    
    UITextField *textField = [UITextField new];
    textField.left = [model.textField[@""] floatValue];
    textField.top = lbl.top + lbl.height + 10;
    textField.width = [model.textField[@""] floatValue];
    textField.height = [model.textField[@""] floatValue];
    [self addSubview:textField];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.left = textField.left + textField.width;
    but.top = lbl.top + lbl.height + 10;
    but.width = [model.butDic[@""] floatValue];
    but.height = [model.butDic[@""] floatValue];
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
