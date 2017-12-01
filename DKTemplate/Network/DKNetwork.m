//
//  DKNetwork.m
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DKNetwork.h"


static NSString * const kWeatherAPIKey = @"ukif1fww7deijqwo";
static NSString * const kWeatherHost = @"https://api.seniverse.com/v3/";


@interface DKNetwork()
@property (nonatomic,strong) NSURLSession * session;

@end


@implementation DKNetwork

+(instancetype)share{
    static dispatch_once_t onceToken;
    static DKNetwork * network;
    dispatch_once(&onceToken, ^{
        network = [DKNetwork new];
    });
    return network;
}


-(instancetype)init{
    self = [super init];
    
    if (self) {
        self.session = [NSURLSession sharedSession];
    }
    return self;
}


-(NSURLSessionDataTask *)dataWithURLString:(NSString *)URLString
                                    params:(NSDictionary *)params
                                 completed:(void (^)(NSDictionary * data))completedHandler{
    //访问地址
    NSMutableString * _mString = [NSMutableString stringWithString:kWeatherHost];
    [_mString appendString:URLString];
    
    //参数
    NSMutableDictionary * _mDictionary = [NSMutableDictionary dictionary];
    [_mDictionary setValue:kWeatherAPIKey forKey:@"key"];
    if (params) {
        [_mDictionary addEntriesFromDictionary:params];
    }
    params = [_mDictionary copy];
    
    
    //GET参数拼接
    [_mString appendString:@"?"];
    NSInteger index = 0;
    for (NSString * key in params.allKeys) {
        [_mString appendFormat:@"%@=%@",key,params[key]];
        if (index < params.allKeys.count - 1) {
            [_mString appendString:@"&"];
        }
        ++index;
    }
    
    
    //回调
    void(^_completionHandler)(NSData * data,
                              NSURLResponse * response,
                              NSError * error) = ^(NSData * data,
                                                   NSURLResponse * response,
                                                   NSError * error){
        if (error) {
            NSLog(@"net work error:%@",error);
            return;
        }
        NSDictionary * dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        dispatch_async(dispatch_get_main_queue(), ^{
            completedHandler(dictionary);
        });
    };
    
    //发起请求
    NSCharacterSet * cSet = [NSCharacterSet URLFragmentAllowedCharacterSet];
    NSString * URLStringEncoding = [[_mString copy] stringByAddingPercentEncodingWithAllowedCharacters:cSet];
    NSURL * URL = [NSURL URLWithString:URLStringEncoding];
    NSURLSessionDataTask * task = [self.session dataTaskWithURL:URL completionHandler:_completionHandler];
    [task resume];
    return task;
}












@end
