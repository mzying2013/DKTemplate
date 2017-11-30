//
//  DKDetailPresenter.h
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKViewProtocol.h"
#import "DKViewModelProtocol.h"
#import "DKPresenterProtocol.h"

@interface DKDetailPresenter : NSObject<DKPresenterProtocol>
@property (nonatomic,weak) id<DKViewProtocol> view;
@property (nonatomic,weak) id<DKViewModelProtocol> viewModel;

@end
