//
//  ViewController.m
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "ViewController.h"
#import "DKView.h"

@interface ViewController ()
@property (nonatomic,strong)DKView * dkView;

@end

@implementation ViewController


#pragma mark - Life Cycle

-(void)loadView{
    self.view = self.dkView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
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




@end
