//
//  TYInstancePlatformView.m
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYInstancePlatformView.h"
#import "TYInstancaProcessData.h"
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

- (void)addWithInstanceDataModel:(TYInstanceDataModel *)dataModel {
    TYInstanceLayoutView *view = [TYInstanceLayoutView addInstanceLayoutView:dataModel];
    [view initViewDataModel:dataModel dealBlock:^(int deal) {
        NSLog(@"这里的参数是多少:%d",deal);
        /*
         这里要考虑的是在那块来创建数据处理器，如果是在UI平台上那么首页考虑的就是交互的问题。view(页面)和data(数据处理)是没有交际的，他们靠的是平台来建立两者之间的关系。这样的好处两者之间分离，没有耦合性，在其它地方的复用性也高。
         第二种：在view(页面)中创建，这样两者就存在联系。但问题是耦合性非常高，没有什么复用性。
         */
        BOOL boo = [TYInstancaProcessData incomingWithInt:deal];
        [view whetherHideWithTextField:boo];
    }];
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
