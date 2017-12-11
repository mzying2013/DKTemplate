//
//  JLRoutes+DKMap.m
//  DKTemplate
//
//  Created by bill on 2017/12/1.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "JLRoutes+DKMap.h"
#import "UIViewController+DKTop.h"
#import "DKViewControllerProtocol.h"

@implementation JLRoutes (DKMap)

+(void)dk_addAllRoutes{
    JLRoutes * routes = [JLRoutes globalRoutes];
    [routes addRoute:@"/push/:viewController" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        Class class = NSClassFromString(parameters[@"viewController"]);
        if (![class isSubclassOfClass:[UIViewController class]]) {
            return NO;
        }
        
        UIViewController * viewController = nil;
        if ([class conformsToProtocol:@protocol(DKViewControllerProtocol)]) {
            viewController = [[class alloc] initWithParameter:parameters];
        }else{
            viewController = [[class alloc] init];
        }
        UINavigationController * topViewController = (UINavigationController *)[UIViewController dk_topViewController];
        [topViewController pushViewController:viewController animated:YES];
        
        return YES;
    }];
    
    
    [routes addRoute:@"/pop" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        id viewController = parameters[@"viewController"];
        UINavigationController * topViewController = (UINavigationController *)[UIViewController dk_topViewController];
        
        if (viewController) {
            if (![viewController isKindOfClass:[UIViewController class]]) {
                return NO;
            }
            [topViewController popToViewController:(UIViewController *)viewController animated:YES];
        }else{
            [topViewController popViewControllerAnimated:YES];
        }
        
        return YES;
    }];
}



@end
