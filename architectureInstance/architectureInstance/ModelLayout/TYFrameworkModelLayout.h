//
//  TYFrameworkModelLayout.h
//  architectureInstance
//
//  Created by 汤义 on 2018/6/4.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TYFrameworkCellModel.h"
typedef void (^frameworkModelLayoutBlock) (NSMutableArray *mutableArr);
@interface TYFrameworkModelLayout : NSObject
+ (void)addWithFrameworkModelLayoutStr:(NSString *)str frameworkModel:(frameworkModelLayoutBlock)frameworkModel;
@end
