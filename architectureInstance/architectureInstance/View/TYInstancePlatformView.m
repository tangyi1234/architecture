//
//  TYInstancePlatformView.m
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYInstancePlatformView.h"
@interface TYInstancePlatformView()
@end
@implementation TYInstancePlatformView
+ (instancetype)addInstanceDataModel:(TYInstanceDataModel *)dataModel {
    TYInstancePlatformView *view = [TYInstancePlatformView new];
    view.left = 0;
    view.top = 0;
    view.width = w;
    view.height = 400 + [dataModel.sizes[@"height"] floatValue] + 90;
    view.backgroundColor = [UIColor greenColor];
    [view addWithInstanceDataModel:dataModel];
    return view;
}

- (void)addStr:(NSString *)str {
    
}

- (void)addWithInstanceDataModel:(TYInstanceDataModel *)dataModel {
    TYInstanceLayoutView *view = [TYInstanceLayoutView addInstanceLayoutView:dataModel];
    [self addSubview:view];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
