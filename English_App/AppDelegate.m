//
//  AppDelegate.m
//  English_App
//
//  Created by Mihozil on 4/9/18.
//  Copyright © 2018 Mihozil. All rights reserved.
//

#import "AppDelegate.h"
#import "EATabBarViewController.h"
#import "EAUnitsCollectionViewController.h"
#import "EAProfileViewController.h"
#import "AAPLCollectionViewLayout.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    EATabBarViewController *tabbarVC = [[EATabBarViewController alloc]init];
    EAUnitsCollectionViewController *unitCollectionVC = [self newUnitsCollectionViewController];
    EAProfileViewController *profileVC = [self newProfileViewController];
    tabbarVC.viewControllers = @[unitCollectionVC,profileVC];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:tabbarVC];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (EAUnitsCollectionViewController*) newUnitsCollectionViewController {
    AAPLCollectionViewLayout *layout = [[AAPLCollectionViewLayout alloc]init];
    EAUnitsCollectionViewController *unitsVC = [[EAUnitsCollectionViewController alloc]initWithCollectionViewLayout:layout];
    unitsVC.tabBarItem.title = @"Learn";
    return unitsVC;
}

- (EAProfileViewController*) newProfileViewController {
    EAProfileViewController *profileVC = [[EAProfileViewController alloc]init];
    profileVC.tabBarItem.title = @"Profile";
    return profileVC;
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
