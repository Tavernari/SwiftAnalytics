//
//  AppDelegate.swift
//  SwiftAnalytics
//
//  Created by Tavernari on 02/21/2020.
//  Copyright (c) 2020 Tavernari. All rights reserved.
//

import UIKit
import SwiftAnalytics

class FakeAnalytics {
    static func call(name:String, params: [String: Any]?){
        print(name, params)
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        SwiftAnalytics.registerBroker(name: "AnalyticsService") { event in
            FakeAnalytics.call(name: event.name, params: event.params)
        }

        return true
    }

}

