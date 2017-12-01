//
//  DKViewModelProtocol.h
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol DKModelProtocol;

@protocol DKViewModelProtocol <NSObject>
@property (nonatomic,strong) id<DKModelProtocol> model;
-(void)dynamicBindingWithFinishedCallBack:(void(^)(void))finishCallBack;

@optional
@property (nonatomic,copy) NSDictionary<NSString *,id> * userInfo;

@end
