//
//  DKDetailView.h
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DKViewProtocol.h"

@interface DKDetailView : UIView<DKViewProtocol>
@property (nonatomic,strong) id<DKViewModelProtocol> viewModel;
@property (nonatomic,strong) id<DKPresenterProtocol> presenter;


@end
