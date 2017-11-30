//
//  DKModel.h
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKModelProtocol.h"

@interface DKModel : NSObject<DKModelProtocol>
@property (nonatomic,strong) NSArray * datas;


@end
