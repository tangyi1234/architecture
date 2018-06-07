//
//  TYFrameworkCellLayoutView.h
//  architectureInstance
//
//  Created by 汤义 on 2018/6/4.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYFrameworkCellLayoutView : UIView
+ (instancetype)addFrameworkCellLayoutView;
- (void)addWithLayoutModel:(TYFrameworkCellModel *)model;
- (void)addWithImageUrl:(NSString *)urlStr;
@end
