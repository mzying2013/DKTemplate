//
//  DKViewProtocol.h
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol DKViewModelProtocol;
@protocol DKPresenterProtocol;

@protocol DKViewProtocol <NSObject>
@property (nonatomic,strong) id<DKViewModelProtocol> viewModel;
@property (nonatomic,strong) id<DKPresenterProtocol> presenter;

@end



