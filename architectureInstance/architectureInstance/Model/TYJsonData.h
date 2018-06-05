//
//  TYJsonData.h
//  architectureInstance
//
//  Created by 汤义 on 2018/5/31.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TYJsonData : NSObject
+ (NSArray *)addJsonDataStr:(NSString *)str;
+ (CGSize)addWithCalculateHeightStr:(NSString *)str;
+ (UIImage *)addWithFilePathStr:(NSString *)str;
@end
