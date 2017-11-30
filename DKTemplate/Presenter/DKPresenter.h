//
//  DKPresenter.h
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKPresenterProtocol.h"
@protocol DKViewProtocol;
@protocol DKViewModelProtocol;

@interface DKPresenter : NSObject<DKPresenterProtocol>
@property (nonatomic,weak) id<DKViewProtocol> view;
@property (nonatomic,weak) id<DKViewModelProtocol> viewModel;

@end
