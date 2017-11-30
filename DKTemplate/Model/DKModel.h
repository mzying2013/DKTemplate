//
//  DKModel.h
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKModelProtocol.h"

@interface DKModel : NSObject<DKModelProtocol>

/**
 地点
 */
@property (nonatomic,strong,readonly) NSString * name;

/**
 天气
 */
@property (nonatomic,strong,readonly) NSString * text;

/**
 风向
 */
@property (nonatomic,strong,readonly) NSString * wind_direction;

/**
 温度
 */
@property (nonatomic,strong,readonly) NSString * temperature;


@end
