//
//  AppDelegate.swift
//  testData
//
//  Created by 黃健維 on 2015/12/29.
//  Copyright © 2015年 黃健維. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        Parse.setApplicationId("gO0ORgczQLNq1YJ3r6JGx89JzKUCeYhwUhAP1yhF", clientKey:"p0HjnxCvOVQFrAJ6Ytdo0UE02LFk9vDJYLiD0ENY")
        //test facebook connection
        PFFacebookUtils.initializeFacebookWithApplicationLaunchOptions(launchOptions)
        
        
        //test connection of parse
        let object = PFObject(className: "yourclass")
        object.addObject("the thing present in the field", forKey: "the column name")
        object.saveInBackground()
        
        
        
        
        return true
    }
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
        return FBSDKApplicationDelegate.sharedInstance().application(application, openURL: url, sourceApplication: sourceApplication, annotation: annotation)
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

    
    /*

    let username = usernameTextField.text
    let passwd = passwordTextField.text
    let emailEntered = emailTextField.text
    
    
    
    
    if username != "" && passwd != "" && emailEntered != "" {
    signup()
    }
    else
    {
    self.messageLabel.text = "All Fields Required"
    }
    

    
    
    */

}

