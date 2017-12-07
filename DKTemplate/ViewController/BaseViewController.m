//
//  BaseViewController.m
//  DKTemplate
//
//  Created by bill on 2017/12/7.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "BaseViewController.h"
#import "DKViewControllerProtocol.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    if ([self conformsToProtocol:@protocol(DKViewControllerProtocol)]) {
        NSLog(@"%@ conforms to protocol %@",
              NSStringFromClass(self.class),
              NSStringFromProtocol(@protocol(DKViewControllerProtocol)));
    }else{
        NSLog(@"%@ not not conforms to protocol %@",
              NSStringFromClass(self.class),
              NSStringFromProtocol(@protocol(DKViewControllerProtocol)));
    }
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

@end
