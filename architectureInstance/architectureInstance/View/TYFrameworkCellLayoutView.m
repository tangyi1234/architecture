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
    lbl.numberOfLines = 0;
    [self addSubview:_lbl = lbl];
    
    UITextField *textField = [UITextField new];
    textField.placeholder = @"请输入";
    [self addSubview:_textField = textField];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.backgroundColor = [UIColor redColor];
    [but setTitle:@"点击" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_but = but];
}

- (void)addWithLayoutModel:(TYFrameworkCellModel *)model {
    _imageView.left = 0;
    _imageView.top = 0;
    _imageView.width = w;
    _imageView.height = 400;
    
    _lbl.left = 0;
    _lbl.top = _imageView.height + 5;
    _lbl.width = w;
    _lbl.height = [model.lblHeight floatValue];
    
    _textField.left = 0;
    _textField.top = _lbl.top + _lbl.height + 5;
    _textField.width = 300;
    _textField.height = 50;
    
    _but.left = _textField.width +10;
    _but.top = _lbl.top + _lbl.height + 5;
    _but.width = 100;
    _but.height = 50;
    /*
     图片是用不能这样直接使用，这里会去进行网络请求，这样会卡住主线程，加载图片还是要用异步加载。在一个就是要使用缓存机制。
     */
//    NSString *url = [NSString stringWithFormat:@"http://10.10.61.218:8080/name/%@.png",model.imageName];
//    _imageView.image = [TYJsonData addWithRequestStr:url];
    
    _imageView.image = [TYJsonData addWithFilePathStr:model.imageName];
    _lbl.text = model.lblContent;
    
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
