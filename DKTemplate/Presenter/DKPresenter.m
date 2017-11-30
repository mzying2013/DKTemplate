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
#import "DetailViewController.h"

@implementation DKPresenter


#pragma mark - DKPresenterProtocol
-(void)push:(id)userInfo{
    NSString * text = userInfo;
    
    DetailViewController * detailVC = [DetailViewController new];
    [[DKPresenter getCurrentVC].navigationController pushViewController:detailVC animated:YES];
}

- (void)adapterWithView:(id<DKViewProtocol>)view viewModel:(id<DKViewModelProtocol>)viewModel{
    _view = view;
    _viewModel = viewModel;
    
    [self dynamicBinding];
}


#pragma mark - Private Method
-(void)dynamicBinding{
    __weak typeof(self) _self = self;
    __weak id<DKViewModelProtocol> __viewModel = _viewModel;
    [_viewModel dynamicBindingWithFinishedCallBack:^{
        _self.view.viewModel = __viewModel;
        _self.view.presenter = _self;
    }];
}


#pragma mark - Current ViewController
+ (UIViewController *)getCurrentVC{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal) {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(window in windows) {
            if (window.windowLevel == UIWindowLevelNormal) {
                break;
            }
        }
    }
    // iOS 8+ deep traverse
    UIViewController * vc = [DKPresenter iterateSubViewsForViewController:window];
    return vc;
}



+ (id)iterateSubViewsForViewController:(UIView *) parentView {
    for (UIView *subView in [parentView subviews]) {
        UIResponder *responder = [subView nextResponder];
        if([responder isKindOfClass:[UIViewController class]]) {
            return [self topMostViewController: (UIViewController *) responder];
        }
        id found = [DKPresenter iterateSubViewsForViewController:subView];
        if( nil != found) {
            return found;
        }
    }
    return nil;
}

+ (UIViewController *) topMostViewController: (UIViewController *) controller {
    BOOL isPresenting = NO;
    do {
        // this path is called only on iOS 6+, so -presentedViewController is fine here.
        UIViewController *presented = [controller presentedViewController];
        isPresenting = presented != nil;
        if(presented != nil) {
            controller = presented;
        }
        
    } while (isPresenting);
    
    return controller;
}




@end
