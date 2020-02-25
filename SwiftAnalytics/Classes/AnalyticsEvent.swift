//
//  AnalyticsEvent.swift
//  SwiftAnalytics
//
//  Created by Victor C Tavernari on 21/02/20.
//  Copyright © 2020 Taverna Apps. All rights reserved.
//

import Foundation

public class AnalyticsEvent: Event {
    public let name: String
    public let kind: Kind = .event
    public var params: [String: Any]? = nil

    public init(name: String, params: [String: Any]? = nil) {
        self.name = name
        self.params = params
    }
}
