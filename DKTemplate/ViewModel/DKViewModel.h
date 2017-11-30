//
//  DKViewModel.h
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKViewModelProtocol.h"

@interface DKViewModel : NSObject<DKViewModelProtocol>
@property (nonatomic,strong) id<DKModelProtocol> model;

@end
