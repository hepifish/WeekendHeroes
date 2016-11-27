//
//  AppDelegate.swift
//  weekendHeroes
//
//  Created by Admin on 02/11/2016.
//  Copyright © 2016 hpf. All rights reserved.
//

import UIKit
let themeColor = UIColor(red: 0.57, green: 0.78, blue: 0.107, alpha: 1.0)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window?.tintColor = themeColor

        return true
    }

}

