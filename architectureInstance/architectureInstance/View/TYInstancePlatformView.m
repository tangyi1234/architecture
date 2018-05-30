//
//  TYInstancePlatformView.m
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYInstancePlatformView.h"

@implementation TYInstancePlatformView
+ (instancetype)addInstancePlatformView:(TYInstancePlatformModel *)model {
    TYInstancePlatformView *instancePlatformView = [TYInstancePlatformView new];
    instancePlatformView.left = [model.templateDic[@"left"] floatValue];
    instancePlatformView.top = [model.templateDic[@"top"] floatValue];
    instancePlatformView.width = [model.templateDic[@"width"] floatValue];
    instancePlatformView.height = [model.templateDic[@"height"] floatValue];
    return instancePlatformView;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
