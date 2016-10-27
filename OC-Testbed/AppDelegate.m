//
//  AppDelegate.m
//  OC-Testbed
//
//  Created by Mark Fearnley on 21/10/2016.
//  Copyright © 2016 Atos. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window.rootViewController = [self setupOnboardingVC];

    return YES;
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

-(OnboardingViewController*) setupOnboardingVC {
    OnboardingContentViewController *firstPage = [OnboardingContentViewController contentWithTitle:@"Test Onboarding" body:@"Page body goes here." image:[UIImage imageNamed:@"TestIcon"] buttonText:@"Test Button" action:^{
        // do something here when users press the button, like ask for location services permissions, register for push notifications, connect to social media, or finish the onboarding process
        NSLog(@"Button pressed");
        
    }];
    
    OnboardingContentViewController *secondPage = [OnboardingContentViewController contentWithTitle:@"Second Page" body:@"Page body goes here." image:[UIImage imageNamed:@"TestIcon"] buttonText:nil action:nil];
    
    OnboardingContentViewController *thirdPage = [OnboardingContentViewController contentWithTitle:@"Last Page" body:@"Page body goes here." image:[UIImage imageNamed:@"TestIcon"] buttonText:@"Done" action:^{
        // do something here when users press the button, like ask for location services permissions, register for push notifications, connect to social media, or finish the onboarding process
        NSLog(@"Button pressed");
        
    }];
    
    // Image
    return [OnboardingViewController onboardWithBackgroundImage:[UIImage imageNamed:@"background"] contents:@[firstPage, secondPage, thirdPage]];
}

@end
