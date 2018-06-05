//
//  TYJsonData.m
//  architectureInstance
//
//  Created by 汤义 on 2018/5/31.
//  Copyright © 2018年 汤义. All rights reserved.
//  这里的作用就如同网络请求，加载完数据后返回一个NSArray.

#import "TYJsonData.h"

@implementation TYJsonData
+ (NSArray *)addJsonDataStr:(NSString *)str {
    //JSON文件的路径
    NSString *path = [[NSBundle mainBundle] pathForResource:str ofType:nil];
    //加载JSON文件
    NSData *data = [NSData dataWithContentsOfFile:path];
    //将JSON数据转为NSArray或NSDictionary
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    NSArray *dataArr = [NSArray arrayWithArray:dic[@"json"]];
    return dataArr;
}

+ (CGSize)addWithCalculateHeightStr:(NSString *)str {
    CGSize size = [str sizeWithFont:[UIFont systemFontOfSize:14] constrainedToSize:CGSizeMake(w,2000)];
    return size;
}

+ (UIImage *)addWithFilePathStr:(NSString *)str {
    NSString *filePath=[[NSBundle mainBundle] pathForResource:str ofType:@"png"];
    return [UIImage imageNamed:filePath];
}

+ (UIImage *)addWithRequestStr:(NSString *)url {
    NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    return [UIImage imageWithData:data];
}

@end
