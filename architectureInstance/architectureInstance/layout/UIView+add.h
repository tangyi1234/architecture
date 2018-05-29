//
//  UIView+add.h
//  InheritanceHierarchy
//
//  Created by 汤义 on 2018/5/18.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
 为什么要选着使用UIView的分类来做布局的，这是因为UIView是所有控件的父类。这个就能理解了为什么要用UIView来做分类了。
 */
@interface UIView (add)
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@end
