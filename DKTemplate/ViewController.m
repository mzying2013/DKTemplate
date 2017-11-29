//
//  ViewController.m
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIView * baseView;

@end

@implementation ViewController


#pragma mark - Life Cycle

-(void)loadView{
    self.view = self.baseView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//
//    UIView * rightItemView = [UIView new];
//    rightItemView.backgroundColor = [UIColor redColor];
//
//    NSLayoutConstraint * widthLayoutConstraint = [NSLayoutConstraint constraintWithItem:rightItemView
//                                                                         attribute:NSLayoutAttributeWidth
//                                                                         relatedBy:NSLayoutRelationEqual
//                                                                            toItem:nil
//                                                                         attribute:NSLayoutAttributeNotAnAttribute
//                                                                        multiplier:1.0
//                                                                          constant:40];
//    NSLayoutConstraint * heightLayoutConstraint = [NSLayoutConstraint constraintWithItem:rightItemView
//                                                                               attribute:NSLayoutAttributeHeight
//                                                                               relatedBy:NSLayoutRelationEqual
//                                                                                  toItem:nil
//                                                                               attribute:NSLayoutAttributeNotAnAttribute
//                                                                              multiplier:1.0
//                                                                                constant:30];
    
    
//    [rightItemView addConstraints:@[widthLayoutConstraint,heightLayoutConstraint]];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightItemView];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Property Method
-(UIView *)baseView{
    if (!_baseView) {
        _baseView = [UIView new];
        _baseView.backgroundColor = [UIColor whiteColor];
    }
    return _baseView;
}




@end
