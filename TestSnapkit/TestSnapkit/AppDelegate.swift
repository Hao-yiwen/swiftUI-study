//
//  AppDelegate.swift
//  TestSnapkit
//
//  Created by yw.hao on 2023/10/19.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let controller = ViewController()
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        window!.rootViewController = UINavigationController(rootViewController: controller)
        window!.makeKeyAndVisible()
        
        return true
    }


}

