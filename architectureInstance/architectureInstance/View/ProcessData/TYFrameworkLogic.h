//
//  TYFrameworkLogic.h
//  architectureInstance
//
//  Created by 汤义 on 2018/6/6.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^operationImageBlock) (NSString *urlStr);
@interface TYFrameworkLogic : NSObject
+ (void)addWithImageUrl:(TYFrameworkCellModel *)model sliding:(BOOL)sliding operationImage:(operationImageBlock)operationImage;
@end
