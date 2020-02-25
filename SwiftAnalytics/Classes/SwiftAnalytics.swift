//
//  SwiftAnalytics.swift
//  SwiftAnalytics
//
//  Created by Victor C Tavernari on 21/02/20.
//  Copyright © 2020 Taverna Apps. All rights reserved.
//

import Foundation
import os.log

public class SwiftAnalytics {
    public typealias BrokerCallback = (Event) throws -> Void
    internal static var brokers: [String: BrokerCallback] = [:]

    public static func dispatch(event: Event) {
        guard brokers.isEmpty == false else {
            os_log("%{public}@ did not send, because brokers are empty", event.name)
            return
        }

        brokers.forEach({ broker in
            do {
                os_log("It will call %{public}@ with event %{public}@", broker.key, event.name)
                try broker.value(event)
                os_log("It did call %{public}@ with event %{public}@", broker.key, event.name)
            } catch {
                os_log("It did call with error %{public}@ ", error.localizedDescription)
            }
        })
    }

    internal init(){}

    public static func registerBroker(name: String, callback: @escaping BrokerCallback) {
        brokers[name] = callback
    }

    public static func unregisterBroker(name: String) {
        brokers.removeValue(forKey: name)
        brokers[name] = nil
    }

    public static func removeAllBrokers() {
        brokers.forEach { unregisterBroker(name: $0.key) }
    }
}
