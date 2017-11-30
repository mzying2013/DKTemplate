//
//  DKNetwork.h
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DKNetwork : NSObject

+(instancetype)share;

-(NSURLSessionDataTask *)dataWithURLString:(NSString *)URLString
                                    params:(NSDictionary *)params
                                 completed:(void (^)(NSDictionary * data))completedHandler;



@end
