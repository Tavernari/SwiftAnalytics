//
//  Event.swift
//  FBSnapshotTestCase
//
//  Created by Victor C Tavernari on 21/02/20.
//

import Foundation

public protocol Event {
    var name: String { get }
    var kind: Kind { get }
    var params: [String: Any]? { get }
}
