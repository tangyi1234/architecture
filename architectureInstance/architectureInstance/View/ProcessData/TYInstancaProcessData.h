//
//  TYInstancaProcessData.h
//  architectureInstance
//
//  Created by 汤义 on 2018/6/4.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TYInstancaProcessData : NSObject
+ (void)incomingWithModel:(TYInstanceDataModel *)model;
+ (BOOL)incomingWithInt:(int)data;
@end
