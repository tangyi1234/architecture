//
//  TYViewModelLayout.m
//  architectureInstance
//
//  Created by 汤义 on 2018/6/1.
//  Copyright © 2018年 汤义. All rights reserved.
//  这里的作用就是计算布局与转模型

#import "TYViewModelLayout.h"

@implementation TYViewModelLayout
+ (void)addWithViewModelLayoutStr:(NSString *)str callback:(blockFrameModel)model{
    NSArray *dataArr = [TYJsonData addJsonDataStr:str];
    NSDictionary *dic = dataArr[0];
    NSString *strs = dic[@"textData"];
    // 并发队列的创建方法
    dispatch_queue_t queue = dispatch_queue_create("net.bujige.testQueue", DISPATCH_QUEUE_CONCURRENT);
    //异步执行
    dispatch_async(queue, ^{
        //textData
        CGSize size = [strs sizeWithFont:[UIFont systemFontOfSize:14] constrainedToSize:CGSizeMake(w,2000)];
        //回归主线程中转模型
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSString *widthStr = [NSString stringWithFormat:@"%f",size.width];
            NSString *heightStr = [NSString stringWithFormat:@"%f",size.height];
            NSDictionary *dics = @{@"left":@"0",@"top":@"0",@"width":widthStr,@"height":heightStr};
            // 可变字典
            NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:dic];
            [dict setValue:dics forKey:@"sizes"];
            TYInstanceDataModel* dataModel = [TYInstanceDataModel addWithModelDic:dict];
            if (dataModel) {
                if (model) {
                    model(dataModel);
                }
            }
        });
    });
}
@end
