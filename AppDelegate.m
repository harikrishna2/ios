//
//  AppDelegate.m
//  Assignment
//
//  Created by Paradigm Creatives on 9/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstTabBarViewController.h"
#import "SecondTabBarViewController.h"
#import "TableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    FirstTabBarViewController *firstTabBarViewController = [[FirstTabBarViewController alloc]initWithNibName:@"FirstTabBarViewController" bundle:nil];
    SecondTabBarViewController *secondTabBarViewController = [[SecondTabBarViewController alloc]initWithNibName:@"SecondTabBarViewController" bundle:nil];
    
    tabBarController.ViewControllers = [[NSArray alloc] initWithObjects:firstTabBarViewController,secondTabBarViewController,nil];
    FirstTabBarViewController *thirdTabBarViewController = [[FirstTabBarViewController alloc]initWithNibName:@"FirstTabBarViewController" bundle:nil];
    SecondTabBarViewController *fourthTabBarViewController = [[SecondTabBarViewController alloc]initWithNibName:@"SecondTabBarViewController" bundle:nil];
    SecondTabBarViewController *fifthTabBarViewController = [[SecondTabBarViewController alloc]initWithNibName:@"SecondTabBarViewController" bundle:nil];
    
   // TableViewController *tab = [[TableViewController alloc]initWithNibName:@"TableViewController" bundle:nil];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:firstTabBarViewController];
    //UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:secondTabBarViewController];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:thirdTabBarViewController];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:fourthTabBarViewController];
    UINavigationController *nav5 = [[UINavigationController alloc]initWithRootViewController:fifthTabBarViewController];
    tabBarController.ViewControllers = [[NSArray alloc] initWithObjects:nav1,nav3,nav4,nav5,nil];
    
    
    nav1.tabBarItem.title = @"Contacts";
    //nav2.tabBarItem.title = @"Second";
    nav3.tabBarItem.title = @"Home";
    nav4.tabBarItem.title = @"Logs";
    nav5.tabBarItem.title = @"Camera";
    //[[]]
    nav1.tabBarItem.image = [UIImage imageNamed:@"address-book.png"];
   // nav2.tabBarItem.image = [UIImage imageNamed:@"messages3.png"];
    nav3.tabBarItem.image = [UIImage imageNamed:@"home-2.png"];
    nav4.tabBarItem.image = [UIImage imageNamed:@"logs1.png"];
    nav5.tabBarItem.image = [UIImage imageNamed:@"camera.png"];
    //nav1.tabBarItem.image = [UIImage imageNamed:@"camera.jpeg"];

    //tab.tabBarItem.title = @"Fifth";
    
    //self.navigationController.tabBarController = firstTabBarViewController;
   // self.navigationController.viewControllers = [[NSArray alloc]initWithObjects:@"TableViewController", nil];
    self.window.rootViewController = tabBarController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
