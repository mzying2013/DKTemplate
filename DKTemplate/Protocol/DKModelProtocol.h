//
//  DKModelProtocol.h
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DKModelProtocol <NSObject>
@property (nonatomic,strong) NSArray * datas;
@optional
+(instancetype)modelWithDictionary:(NSDictionary *)dictionary;

@end
