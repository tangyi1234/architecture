//
//  TYModel.m
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYModel.h"

@implementation TYModel
+ (instancetype)addWithModelDic:(NSDictionary *)dic {
    id objc = [[self alloc] init];
    
    unsigned int count = 0;
    
    Ivar *ivarList = class_copyIvarList(self, &count);
    
    //遍历所有成员变量
    for (int i = 0; i < count; i ++) {
        //通过角标，获取数组中的每一个成员变量
        Ivar ivar = ivarList[i];
        //转化成字符串名称
        NSString *ivarName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        //去除字符串个多余部分，成一个key
        NSString *key = [ivarName substringFromIndex:1];
        //通过key来获取value
        id value = dic[key];
        NSLog(@"打印数据:%@",value);
        //防错处理
        if (value) {
            [objc setValue:value forKey:key];
        }
    }
    free(ivarList);
    return objc;
}
@end
