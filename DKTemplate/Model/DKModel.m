//
//  DKModel.m
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DKModel.h"

@implementation DKModel

-(NSArray *)datas{
    if (!_datas) {
        _datas = @[@"衡东县",@"深圳",@"广州",@"长沙",@"大连",@"郴州",@"衡阳",@"永州",@"上海",@"澧县",@"厦门",@"香港",@"台湾",@"西雅图",@"大桥镇"];
    }
    return _datas;
}



@end
