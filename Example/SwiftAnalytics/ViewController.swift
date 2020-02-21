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
        AnalyticsEvent(name: "View will appear").dispatch(params: ["now":Date()])
    }
}
