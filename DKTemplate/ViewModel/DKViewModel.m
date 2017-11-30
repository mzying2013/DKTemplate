//
//  DKViewModel.m
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DKViewModel.h"
#import "DKModel.h"

@implementation DKViewModel


-(void)dynamicBindingWithFinishedCallBack:(void (^)(void))finishCallBack{
    self.model = [DKModel new];
    finishCallBack();
}


@end
