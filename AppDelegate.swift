//
//  AppDelegate.swift
//  HellowSwift
//
//  Created by 甄翰宏 on 16/2/12.
//  Copyright © 2016年 甄翰宏. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //定义三个视图
        
        let oneview = ViewController()
        
        let twoview = SecViewController()

        
        //导航栏
        
        let oneNav :UINavigationController = UINavigationController(rootViewController: oneview)
        
        let twoNav :UINavigationController = UINavigationController(rootViewController: twoview)
        
        //tabbar
        
        let oneItem :UITabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 0)
        let twoItem :UITabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Downloads, tag: 1)
        oneview.tabBarItem = oneItem
        twoview.tabBarItem = twoItem
        let tc = UITabBarController()
        tc.tabBar.barTintColor = UIColor.whiteColor()
        tc.viewControllers = [oneNav,twoNav]
        self.window?.rootViewController = tc;
        

        

        
        
        // Override point for customization after application launch.
        return true
    }

    func initTabBarSelectedItem(){
        let rootController = self.window?.rootViewController as! UITabBarController
        let tabbar = rootController.tabBar
        let fistItem  = (tabbar.items?[0])! as UITabBarItem
        if fistItem.tag == 100{
            fistItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.redColor(),NSFontAttributeName:UIFont.systemFontOfSize(14)], forState: UIControlState.Normal)
        }
        
        
        
        
    }
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

