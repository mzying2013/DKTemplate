//
//  UIViewController+DKTop.m
//  DKTemplate
//
//  Created by bill on 2017/12/1.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "UIViewController+DKTop.h"

@implementation UIViewController (DKTop)

+ (UIViewController *)dk_topViewController{
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
    UIViewController * vc = [[self class] iterateSubViewsForViewController:window];
    return vc;
}



+ (id)iterateSubViewsForViewController:(UIView *) parentView {
    for (UIView *subView in [parentView subviews]) {
        UIResponder *responder = [subView nextResponder];
        if([responder isKindOfClass:[UIViewController class]]) {
            return [[self class] topMostViewController: (UIViewController *) responder];
        }
        id found = [[self class] iterateSubViewsForViewController:subView];
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
