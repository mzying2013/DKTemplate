//
//  BaseViewController.m
//  DKTemplate
//
//  Created by bill on 2017/12/7.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "BaseViewController.h"
#import "DKNavigationControllerProtocol.h"

@interface BaseViewController ()

@end

@implementation BaseViewController


#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([self conformsToProtocol:@protocol(DKNavigationControllerProtocol)]) {
        if ([self respondsToSelector:@selector(dk_disableInteractivePop)]) {
            
        }
        if ([self respondsToSelector:@selector(dk_isHiddenNavigationBar)]) {
            BOOL isHidden = (BOOL)[self performSelector:@selector(dk_isHiddenNavigationBar)];
            self.navigationController.navigationBarHidden = isHidden;
        }
    }
}

//
//-(void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//
//    if ([self conformsToProtocol:@protocol(DKNavigationControllerProtocol)]) {
//        if ([self respondsToSelector:@selector(dk_disableInteractivePop)]) {
//
//        }
//        if ([self respondsToSelector:@selector(dk_isHiddenNavigationBar)]) {
////            BOOL isHidden = (BOOL)[self performSelector:@selector(dk_isHiddenNavigationBar)];
////            self.navigationController.navigationBar.hidden = isHidden;
//        }
//    }else{
//        self.navigationController.navigationBar.hidden = NO;
//    }
//}


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

@end
