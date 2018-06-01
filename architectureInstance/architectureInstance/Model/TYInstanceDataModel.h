//
//  TYInstanceDataModel.h
//  architectureInstance
//
//  Created by 汤义 on 2018/5/31.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TYInstanceDataModel : TYModel
@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *textData;
@property (nonatomic, strong) NSDictionary *sizes;
@end
