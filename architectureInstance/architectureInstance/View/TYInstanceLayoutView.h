//
//  TYInstanceLayoutView.h
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYInstanceLayoutView : UIView
+ (instancetype)addInstanceLayoutView:(TYInstancePlatformModel *)model dataModel:(TYInstanceDataModel *)dataModel lblModel:(TYCalculateFrameModel *)lblModel;
@end
