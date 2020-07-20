//
//  AppDelegate.swift
//  PersonalProject
//
//  Created by  Alexander on 29.06.2020.
//  Copyright © 2020  Alexander. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let welcomeAssembly = WelcomeAssembly.assembly()
        let navigationController = UINavigationController(rootViewController: welcomeAssembly)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}

