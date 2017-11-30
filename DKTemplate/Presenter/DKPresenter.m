//
//  DKPresenter.m
//  DKTemplate
//
//  Created by bill on 2017/11/30.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DKPresenter.h"
#import "DKViewModelProtocol.h"
#import "DKViewProtocol.h"

@implementation DKPresenter

-(void)push{
    NSLog(@"view will push.......");
}

- (void)adapterWithView:(id<DKViewProtocol>)view viewModel:(id<DKViewModelProtocol>)viewModel{
    _view = view;
    _viewModel = viewModel;
    
    [self dynamicBinding];
}


-(void)dynamicBinding{
    __weak typeof(self) _self = self;
    __weak id<DKViewModelProtocol> __viewModel = _viewModel;
    [_viewModel dynamicBindingWithFinishedCallBack:^{
        _self.view.viewModel = __viewModel;
        _self.view.presenter = _self;
    }];
}




@end
