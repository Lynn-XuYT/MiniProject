//
//  AppDelegate.m
//  MiniProject
//
//  Created by Lynn on 16/6/15.
//  Copyright © 2016年 TianAndTan. All rights reserved.
//

#import "AppDelegate.h"
#import "MNNavigationController.h"
#import "MNMyInfoViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"1" image:nil tag:1];
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor redColor];
    MNNavigationController *nav1 = [[MNNavigationController alloc] initWithRootViewController:vc1];
    nav1.tabBarItem = item1;
    vc1.title = @"1";
    
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"2" image:nil tag:2];
    UIViewController *vc2 = [[UIViewController alloc] init];
    MNNavigationController *nav2 = [[MNNavigationController alloc] initWithRootViewController:vc2];
    nav2.tabBarItem = item2;
    vc2.title = @"2";
    
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"3" image:nil tag:3];
    UIViewController *vc3 = [[UIViewController alloc] init];
    MNNavigationController *nav3 = [[MNNavigationController alloc] initWithRootViewController:vc3];
    nav3.tabBarItem = item3;
    vc3.title = @"3";
    
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"我的" image:nil tag:4];
    MNMyInfoViewController *vc4 = [[MNMyInfoViewController alloc] init];
    MNNavigationController *nav4 = [[MNNavigationController alloc] initWithRootViewController:vc4];
    nav4.tabBarItem = item4;
    vc4.title = @"我的";
    
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    [tabVC setViewControllers:[NSArray arrayWithObjects:nav1, nav2, nav3, nav4, nil]];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = tabVC;

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
