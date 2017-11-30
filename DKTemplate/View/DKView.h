//
//  DKView.h
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DKViewProtocol.h"

@interface DKView : UIView<DKViewProtocol>
@property (nonatomic,strong) id<DKViewModelProtocol> viewModel;
@property (nonatomic,strong) id<DKPresenterProtocol> presenter;

@end
