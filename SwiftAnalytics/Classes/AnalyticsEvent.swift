//
//  AnalyticsEvent.swift
//  SwiftAnalytics
//
//  Created by Victor C Tavernari on 21/02/20.
//  Copyright © 2020 Taverna Apps. All rights reserved.
//

import Foundation

public class AnalyticsEvent {
    private let name: String
    public init(name: String) {
        self.name = name
    }

    public func dispatch(params: [String: Any]?) {
        SwiftAnalytics.dispatch(eventName: self.name, eventParams: params)
    }
}
