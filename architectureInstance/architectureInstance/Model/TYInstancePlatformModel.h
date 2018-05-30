//
//  TYInstancePlatformModel.h
//  architectureInstance
//
//  Created by 汤义 on 2018/5/30.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TYModel.h"
@interface TYInstancePlatformModel : TYModel
@property (nonatomic, strong) NSDictionary *templateDic;//底部view
@property (nonatomic, strong) NSDictionary *imageDic;
@property (nonatomic, strong) NSDictionary *lblDic;
@property (nonatomic, strong) NSDictionary *butDic;
@property (nonatomic, strong) NSDictionary *textField;
@end
