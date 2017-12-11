//
//  MoreDetailViewController.m
//  DKTemplate
//
//  Created by bill on 2017/12/11.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "MoreDetailViewController.h"

@interface MoreDetailViewController ()

@end

@implementation MoreDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"更多信息";
    self.view.backgroundColor = [UIColor grayColor];
    
    UIColor * color = [UIColor colorWithRed:97/255.0 green:153/255.0 blue:114/255.0 alpha:1.0];
    self.navigationController.navigationBar.barTintColor = color;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor greenColor]};
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
