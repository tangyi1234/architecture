//
//  TYInstanceLayoutView.h
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^dealBlock) (int deal);
@interface TYInstanceLayoutView : UIView

+ (instancetype)addInstanceLayoutView:(TYInstanceDataModel *)dataModel;
- (void)initViewDataModel:(TYInstanceDataModel *)dataModel dealBlock:(dealBlock)deal;
- (void)whetherHideWithTextField:(BOOL)boo;
@end
