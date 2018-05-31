//
//  TYInstanceLayoutView.m
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYInstanceLayoutView.h"

@implementation TYInstanceLayoutView
+ (instancetype)addInstanceLayoutView:(TYInstancePlatformModel *)model dataModel:(TYInstanceDataModel *)dataModel lblModel:(TYCalculateFrameModel *)lblModel {
    TYInstanceLayoutView *view = [TYInstanceLayoutView new];
    view.left = 0;
    view.top = 0;
    view.width = 320;
    view.height = 500;
    [view initViewModel:model dataModel:dataModel lblModel:lblModel];
    return view;
}

- (void)initViewModel:(TYInstancePlatformModel *)model dataModel:(TYInstanceDataModel *)dataModel lblModel:(TYCalculateFrameModel *)lblModel {
    UIImageView *imageView = [UIImageView new];
    imageView.left = [model.imageDic[@"left"] floatValue];
    imageView.top = [model.imageDic[@"top"] floatValue];
    imageView.width = [model.imageDic[@"width"] floatValue];
    imageView.height = [model.imageDic[@"height"] floatValue];
    NSString *filePath=[[NSBundle mainBundle] pathForResource:dataModel.image ofType:@"png"];
    imageView.image = [UIImage imageNamed:filePath];
    [self addSubview:imageView];
    
    UILabel *lbl = [UILabel new];
    lbl.left = [lblModel.sizes[@"left"] floatValue];
    lbl.top = imageView.top + imageView.height + 10;
    lbl.width = [lblModel.sizes[@"width"] floatValue];
    lbl.height = [lblModel.sizes[@"height"] floatValue];
    lbl.numberOfLines = 0;
    lbl.text = dataModel.textData;
    lbl.font = [UIFont systemFontOfSize:14];
    [self addSubview:lbl];
    
    UITextField *textField = [UITextField new];
    textField.left = [model.textField[@"left"] floatValue];
    textField.top = lbl.top + lbl.height + 10;
    textField.width = [model.textField[@"width"] floatValue];
    textField.height = [model.textField[@"height"] floatValue];
    [self addSubview:textField];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.left = textField.left + textField.width;
    but.top = lbl.top + lbl.height + 10;
    but.width = [model.butDic[@"width"] floatValue];
    but.height = [model.butDic[@"height"] floatValue];
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
