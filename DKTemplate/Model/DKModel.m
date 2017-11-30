//
//  DKModel.m
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DKModel.h"

@interface DKModel(){
    NSDictionary * _data;
    NSArray * _packArray;
}

@end


@implementation DKModel


#pragma makr - DKModelProtocol
+(instancetype)modelWithDictionary:(NSDictionary *)dictionary{
    DKModel * model = [[DKModel alloc] initWithDictionary:dictionary];
    return model;
}


-(instancetype)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    
    if (self) {
        if (dictionary[@"results"]) {
            NSArray * results = (NSArray *)dictionary[@"results"];
            if (results.count > 0) {
                _data = [results firstObject];
                
                NSMutableArray * _mArray = [NSMutableArray array];
                [_mArray addObject:@{@"title":@"地点",@"value":self.name}];
                [_mArray addObject:@{@"title":@"天气",@"value":self.text}];
                [_mArray addObject:@{@"title":@"风向",@"value":self.wind_direction}];
                [_mArray addObject:@{@"title":@"温度",@"value":self.temperature}];
                _packArray = [_mArray copy];
            }
        }
    }
    return self;
}





-(NSArray *)datas{
    return _packArray;
}


-(NSString *)name{
    return _data[@"location"][@"name"];
}

-(NSString *)text{
    return _data[@"now"][@"text"];
}

-(NSString *)wind_direction{
    return _data[@"now"][@"wind_direction"];
}

-(NSString *)temperature{
    return _data[@"now"][@"temperature"];
}




@end
