//
//  DKModel.m
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DKModel.h"

@interface DKModel()
@property (nonatomic,strong) NSDictionary * data;

@end


@implementation DKModel


#pragma makr - DKModelProtocol
+(instancetype)modelWithDictionary:(NSDictionary *)dictionary{
    DKModel * model = [DKModel new];
    if (dictionary[@"results"]) {
        NSArray * results = (NSArray *)dictionary[@"results"];
        if (results.count > 0) {
            model.data = [results firstObject];
        }
    }
    return model;
}


-(NSString *)name{
    return self.data[@"location"][@"name"];
}

-(NSString *)text{
    return self.data[@"now"][@"text"];
}

-(NSString *)wind_direction{
    return self.data[@"now"][@"wind_direction"];
}

-(NSString *)temperature{
    return self.data[@"now"][@"temperature"];
}




@end
