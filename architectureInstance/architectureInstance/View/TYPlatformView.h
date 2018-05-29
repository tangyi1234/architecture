//
//  TYPlatformView.h
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/18.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYPlatformView : UIView
+ (instancetype)addPlatformView;
- (void)addViewLayout;
- (void)addViewLayoutModel:(NSString *)model;
@end
