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

@interface DetailViewController ()
@property (nonatomic,strong) DKDetailPresenter * presenter;
@property (nonatomic,strong) DKDetailView * detailView;

@end

@implementation DetailViewController


#pragma mark - Life Cycle

-(void)loadView{
    self.view = self.detailView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - Property Method
-(DKDetailView*)detailView{
    if (!_detailView) {
        _detailView = [DKDetailView new];
    }
    return _detailView;
}





@end
