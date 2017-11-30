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
    NSURL * URL = [NSURL URLWithString:[_mString copy]];
    
    //参数
    NSMutableDictionary * _mDictionary = [NSMutableDictionary dictionary];
    [_mDictionary setValue:kWeatherAPIKey forKey:@"key"];
    if (params) {
        [_mDictionary setDictionary:params];
    }
    
    NSMutableURLRequest * mURLRequest = [NSMutableURLRequest requestWithURL:URL];
    [mURLRequest setHTTPMethod:@"GET"];
    [mURLRequest setHTTPBody:[NSKeyedArchiver archivedDataWithRootObject:[_mDictionary copy]]];
    
    //回调
    void(^_completionHandler)(NSData * data,
                              NSURLResponse * response,
                              NSError * error) = ^(NSData * data,
                                                   NSURLResponse * response,
                                                   NSError * error){
        NSDictionary * dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        completedHandler(dictionary);
    };
    
    NSURLSessionDataTask * task = [self.session dataTaskWithRequest:[mURLRequest copy] completionHandler:_completionHandler];
    return task;
}












@end
