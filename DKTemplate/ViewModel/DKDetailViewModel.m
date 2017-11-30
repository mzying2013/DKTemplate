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
    [[DKNetwork share] dataWithURLString:@"weather/now.json"
                                  params:@{@"location":@"深圳"}
                               completed:^(NSDictionary *data) {
                                   _model = [DKDetailModel modelWithDictionary:data];
                                   finishCallBack();
                               }];
}



@end
