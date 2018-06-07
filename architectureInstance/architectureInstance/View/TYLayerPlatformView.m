//
//  TYLayerPlatformView.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/6.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYLayerPlatformView.h"

@implementation TYLayerPlatformView
+ (instancetype)addLayerPlatformView {
    TYLayerPlatformView *view = [TYLayerPlatformView new];
    view.left = 0;
    view.top = 100;
    view.width = w;
    view.height = h - 100;
    return view;
}

- (void)initView {
    UIImageView *imageView = [UIImageView new];
    imageView.left = 0;
    imageView.top = 0;
    imageView.width = w;
    imageView.height = 300;
    imageView.image = [TYJsonData addWithFilePathStr:@"1"];
    [self addSubview:imageView];
    
    UIImageView *imageView1 = [UIImageView new];
    imageView1.left = 0;
    imageView1.top = imageView.top + imageView.height + 10;
    imageView1.width = w;
    imageView1.height = 300;
    imageView1.image = [TYJsonData addWithFilePathStr:@"2"];
    [self addSubview:imageView1];
    
    UIImageView *imageView2 = [UIImageView new];
    imageView2.left = 0;
    imageView2.top = imageView1.top + imageView1.height + 10;
    imageView2.width = w;
    imageView2.height = 300;
    imageView2.image = [TYJsonData addWithFilePathStr:@"3"];
    [self addSubview:imageView2];
}

- (void)initLayer {
    UIImageView *imageView = [UIImageView new];
    imageView.left = 0;
    imageView.top = 0;
    imageView.width = w;
    imageView.height = 300;
    imageView.image = [TYJsonData addWithFilePathStr:@"1"];
    [self.layer addSublayer:imageView.layer];
    
    UIImageView *imageView1 = [UIImageView new];
    imageView1.left = 0;
    imageView1.top = imageView.top + imageView.height + 10;
    imageView1.width = w;
    imageView1.height = 300;
    imageView1.image = [TYJsonData addWithFilePathStr:@"2"];
    [self.layer addSublayer:imageView1.layer];
    
    UIImageView *imageView2 = [UIImageView new];
    imageView2.left = 0;
    imageView2.top = imageView1.top + imageView1.height + 10;
    imageView2.width = w;
    imageView2.height = 300;
    imageView2.image = [TYJsonData addWithFilePathStr:@"3"];
    [self.layer addSublayer:imageView2.layer];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
