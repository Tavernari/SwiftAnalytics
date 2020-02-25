//
//  ScreenEvent.swift
//  FBSnapshotTestCase
//
//  Created by Victor C Tavernari on 25/02/20.
//

import Foundation

public class ScreenEvent: Event {
    public let name: String
    public let kind: Kind = .screen
    public var params: [String : Any]? = [:]

    public init(name:String, params: [String: Any]? = nil) {
        self.name = name
        self.params = params
    }
}
