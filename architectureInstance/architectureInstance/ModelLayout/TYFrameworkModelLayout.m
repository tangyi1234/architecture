//
//  TYFrameworkModelLayout.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/4.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "TYFrameworkModelLayout.h"

@implementation TYFrameworkModelLayout
+ (void)addWithFrameworkModelLayoutStr:(NSString *)str frameworkModel:(frameworkModelLayoutBlock)frameworkModel {
    NSMutableArray *muArr = [NSMutableArray array];
    NSArray *arr = [TYJsonData addJsonDataStr:str];
    NSLog(@"这里有数据没有:%lu",(unsigned long)arr.count);
    for (int i = 0; i < arr.count; i++) {
        NSDictionary *dic = arr[i];
        NSString *contentStr = dic[@"lblContent"];
        NSLog(@"获取到的文字:%@",contentStr);
        dispatch_queue_t queue = dispatch_queue_create("frameworkModelLayout", DISPATCH_QUEUE_CONCURRENT);
        //异步并发执行
        dispatch_async(queue, ^{
            CGSize size = [TYJsonData addWithCalculateHeightStr:contentStr];
            dispatch_sync(dispatch_get_main_queue(), ^{
                NSString *heightStr = [NSString stringWithFormat:@"%f",size.height];
                NSString *viewHeight = [NSString stringWithFormat:@"%f",400 + size.height + 50 + 20];
                NSMutableDictionary *mutbleDic = [NSMutableDictionary dictionaryWithDictionary:dic];
                [mutbleDic setValue:viewHeight forKey:@"viewHeight"];
                [mutbleDic setValue:heightStr forKey:@"lblHeight"];
                TYFrameworkCellModel *models = [TYFrameworkCellModel addWithModelDic:mutbleDic];
                [muArr addObject:models];
                if (i == arr.count - 1) {
                    if (models) {
                        frameworkModel(muArr);
                    }
                }
                
            });
        });
    }
    
}
@end
