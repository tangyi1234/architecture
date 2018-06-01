//
//  TYViewModelLayout.h
//  architectureInstance
//
//  Created by 汤义 on 2018/6/1.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^blockFrameModel) (TYInstanceDataModel * model);
@interface TYViewModelLayout : NSObject
+ (void)addWithViewModelLayoutStr:(NSString *)str callback:(blockFrameModel)model;
@end
