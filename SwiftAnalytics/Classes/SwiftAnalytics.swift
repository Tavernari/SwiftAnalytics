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
    public typealias BrokerCallback = (String, [String:Any]?) -> Bool
    internal static var brokers: [String: BrokerCallback] = [:]

    internal static func dispatch(eventName: String, eventParams: [String:Any]) {
        guard brokers.isEmpty == false else {
            os_log("%{public}@ did not send, because brokers are empty", eventName)
            return
        }

        brokers.forEach({
            if $0.value(eventName, eventParams) {
                os_log("%{public}@ dispatched %{public}@", $0.key, eventName)
            } else {
                os_log("%{public}@ did not dispatch %{public}@", $0.key, eventName)
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
