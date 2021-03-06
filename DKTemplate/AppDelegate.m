//
//  AppDelegate.m
//  DKTemplate
//
//  Created by bill on 2017/11/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "JLRoutes.h"
#import "JLRoutes+DKMap.h"
#import "DKNavigationController.h"
//#import "WRNavigationBar.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [JLRoutes dk_addAllRoutes];
    
//    [WRNavigationBar wr_setDefaultNavBarShadowImageHidden:YES];
//    UIColor * color = [UIColor colorWithRed:97/255.0 green:153/255.0 blue:114/255.0 alpha:1.0];
//    [WRNavigationBar wr_setDefaultNavBarBarTintColor:color];
//    [WRNavigationBar wr_setDefaultNavBarTintColor:[UIColor whiteColor]];
//    [WRNavigationBar wr_setDefaultNavBarTitleColor:[UIColor whiteColor]];
//    [WRNavigationBar wr_setDefaultStatusBarStyle:UIStatusBarStyleLightContent];
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor orangeColor];
    ViewController * vc = [[ViewController alloc] init];
    DKNavigationController * nc = [[DKNavigationController alloc] initWithRootViewController:vc];
    
    self.window.rootViewController = nc;
    [self.window makeKeyAndVisible];
    
    return YES;
}


-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options{
    return [JLRoutes routeURL:url];
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
