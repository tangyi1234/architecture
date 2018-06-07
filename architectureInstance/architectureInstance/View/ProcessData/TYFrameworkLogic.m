//
//  TYFrameworkLogic.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/6.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYFrameworkLogic.h"

@implementation TYFrameworkLogic
+ (void)addWithImageUrl:(TYFrameworkCellModel *)model sliding:(BOOL)sliding operationImage:(operationImageBlock)operationImage{
    if (!sliding) {
        if (operationImage) {
            operationImage(model.imageName);
        }
    }
}
@end
