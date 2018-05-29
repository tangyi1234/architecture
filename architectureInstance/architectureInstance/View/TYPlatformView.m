//
//  TYPlatformView.m
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/18.
//  Copyright © 2018年 汤义. All rights reserved.
// 这种布局用view上不用于cell上

#import "TYPlatformView.h"
@interface TYPlatformView()
@property (nonatomic, weak) TYLayoutView *layoutView;
@end
@implementation TYPlatformView
+ (instancetype)addPlatformView {
    TYPlatformView *view = [TYPlatformView new];
    view.left = 0;
    view.top = 0;
    view.width = w;
    view.height = h;
    view.backgroundColor = [UIColor redColor];
    /*
     这样做是为了只创建一次，这是和self同步创建
     */
    [view addViewLayout];
    return view;
}

/*
 两种实验样式，一种是创建TYLayoutView的同时初始化view上的所有控件，后期不对frame进行炒作。
 第二种是只对对象做new,不做frame处理，在通过其它接口在处理frame.
 */
#define mark - 开始布局
- (void)addViewLayout {
    TYLayoutView *layoutView = [TYLayoutView new];
    [self addSubview:_layoutView = layoutView];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
