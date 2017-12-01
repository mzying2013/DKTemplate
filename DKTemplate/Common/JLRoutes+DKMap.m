//
//  JLRoutes+DKMap.m
//  DKTemplate
//
//  Created by bill on 2017/12/1.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "JLRoutes+DKMap.h"
#import "UIViewController+DKTop.h"

@implementation JLRoutes (DKMap)

+(void)dk_addAllRoutes{
    JLRoutes * routes = [JLRoutes globalRoutes];
    [routes addRoute:@"/push/:viewController" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        NSString * text = parameters[@"text"];
        
        Class class = NSClassFromString(parameters[@"viewController"]);
        if (![class isSubclassOfClass:[UIViewController class]]) {
            return NO;
        }
        
        UIViewController * viewController = [[class alloc] init];
        UINavigationController * topViewController = (UINavigationController *)[UIViewController dk_topViewController];
        [topViewController pushViewController:viewController animated:YES];
        
        return YES;
    }];
}



@end
