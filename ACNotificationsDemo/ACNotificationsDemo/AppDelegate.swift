//
//  AppDelegate.swift
//  ACNotificationsDemo
//
//  Created by Yury on 10/07/16.
//  Copyright © 2016 Avtolic. All rights reserved.
//

import UIKit

// http://stackoverflow.com/questions/33112559/protocol-doesnt-conform-to-itself
//protocol P { }
//struct S: P { }
//
//struct AnyPArray {
//    var array: [P]
//    init(_ array:[P]) { self.array = array }
//}
//
//extension AnyPArray {
//    func test<T>() -> [T] {
//        return []
//    }
//}
//
//let arr = AnyPArray([S()])
//let result: [S] = arr.test()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
//    let manager = ACManager(defaultPresenter: ACPresenterLog(), defaultAnimation: ACAnimationLog())

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(1 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: {
//                self.manager.addNotification(ACNotificationLog())
//                self.manager.addNotification(ACNotificationLog())
//                self.manager.addNotification(ACNotificationLog())
//                self.manager.addNotification(ACNotificationLog())
        })
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

