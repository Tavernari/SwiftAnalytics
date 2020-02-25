//
//  ViewController.swift
//  SwiftAnalytics
//
//  Created by Tavernari on 02/21/2020.
//  Copyright (c) 2020 Tavernari. All rights reserved.
//

import UIKit
import SwiftAnalytics

class ViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SwiftAnalytics.dispatch(event: ScreenEvent(name: "ViewController"))
        SwiftAnalytics.dispatch(event: AnalyticsEvent(name: "WillAppear", params: ["time":Date()]))
    }
}
