//
//  DetailViewController.m
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "DetailViewController.h"
#import "DKDetailPresenter.h"
#import "DKDetailView.h"
#import "DKDetailViewModel.h"
#import "WRNavigationBar.h"
#import "DKNavigationControllerProtocol.h"

@interface DetailViewController ()<DKNavigationControllerProtocol>
@property (nonatomic,strong) DKDetailPresenter * detailPresenter;
@property (nonatomic,strong) DKDetailView * detailView;
@property (nonatomic,strong) DKDetailViewModel * detailViewModel;

@end

@implementation DetailViewController


#pragma mark - Life Cycle

-(void)loadView{
    self.view = self.detailView;
    
    [self adapterView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Override Method





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - DKViewControllerProtocol
-(instancetype)initWithParameter:(NSDictionary<NSString *,id> *)parameter{
    self = [super init];
    
    if (self) {
        self.detailViewModel.userInfo = parameter;
    }
    
    return self;
}


#pragma mark - DKNavigationControllerProtocol
-(BOOL)dk_isHiddenNavigationBar{
    return YES;
}



#pragma mark - Property Method
-(DKDetailView*)detailView{
    if (!_detailView) {
        _detailView = [DKDetailView new];
    }
    return _detailView;
}


-(DKDetailPresenter *)detailPresenter{
    if (!_detailPresenter) {
        _detailPresenter = [DKDetailPresenter new];
    }
    return _detailPresenter;
}


-(DKDetailViewModel *)detailViewModel{
    if (!_detailViewModel) {
        _detailViewModel = [DKDetailViewModel new];
    }
    return _detailViewModel;
}



#pragma mark - Adapter
-(void)adapterView{
    [self.detailPresenter adapterWithView:self.detailView viewModel:self.detailViewModel];
}






@end
