//
//  DKDetailViewModel.m
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DKDetailViewModel.h"
#import "DKDetailModel.h"
#import "DKNetwork.h"

@implementation DKDetailViewModel

-(void)dynamicBindingWithFinishedCallBack:(void (^)(void))finishCallBack{
    __weak typeof(self) _self = self;
    
    [[DKNetwork share] dataWithURLString:@"weather/now.json"
                                  params:@{@"location":self.userInfo[@"text"]}
                               completed:^(NSDictionary *data) {
                                   _self.model = [DKDetailModel modelWithDictionary:data];
                                   finishCallBack();
                               }];
}



@end
