//
//  TYInstancaProcessData.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/4.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYInstancaProcessData.h"

@implementation TYInstancaProcessData
/*
 */
+ (void)incomingWithModel:(TYInstanceDataModel *)model {
    
}

+ (BOOL)incomingWithInt:(int)data {
    if (data == 1) {
        return YES;
    }else {
        return NO;
    }
}
@end
