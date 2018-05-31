//
//  TYInstancePlatformView.m
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYInstancePlatformView.h"
@interface TYInstancePlatformView()
@property (nonatomic, strong) TYInstancePlatformModel *model;
@end
@implementation TYInstancePlatformView
+ (instancetype)addInstancePlatformView:(TYInstancePlatformModel *)model dataModel:(TYInstanceDataModel *)dataModel lblModel:(TYCalculateFrameModel *)lblModel{
    TYInstancePlatformView *view = [TYInstancePlatformView new];
    view.left = [model.templateDic[@"left"] floatValue];
    view.top = [model.templateDic[@"top"] floatValue];
    view.width = [model.templateDic[@"width"] floatValue];
    view.height = [model.templateDic[@"height"] floatValue];
    view.backgroundColor = [UIColor greenColor];
    [view addWithInstancePlatformView:model dataModel:dataModel lblModel:lblModel];
    return view;
}

- (void)addStr:(NSString *)str {
    
}

- (void)addWithInstancePlatformView:(TYInstancePlatformModel *)model dataModel:(TYInstanceDataModel *)dataModel lblModel:(TYCalculateFrameModel *)lblModel{
    TYInstanceLayoutView *view = [TYInstanceLayoutView addInstanceLayoutView:model dataModel:dataModel lblModel:lblModel];
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
