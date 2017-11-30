//
//  ViewController.m
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "ViewController.h"
#import "DKView.h"
#import "DKPresenter.h"
#import "DKViewModel.h"

@interface ViewController ()
@property (nonatomic,strong)DKView * dkView;
@property (nonatomic,strong)DKPresenter * presenter;
@property (nonatomic,strong)DKViewModel * viewModel;

@end

@implementation ViewController


#pragma mark - Life Cycle

-(void)loadView{
    self.view = self.dkView;
    [self adapterView];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"心知天气";
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Property Method
-(DKView *)dkView{
    if (!_dkView) {
        _dkView = [DKView new];
    }
    return _dkView;
}


-(DKPresenter *)presenter{
    if (!_presenter) {
        _presenter = [DKPresenter new];
    }
    return _presenter;
}


-(DKViewModel *)viewModel{
    if (!_viewModel) {
        _viewModel = [DKViewModel new];
    }
    return _viewModel;
}


#pragma mark - Adapter
-(void)adapterView{
    [self.presenter adapterWithView:self.dkView viewModel:self.viewModel];
}




@end
