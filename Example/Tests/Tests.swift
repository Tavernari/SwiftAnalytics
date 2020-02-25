import XCTest
import SwiftAnalytics

class Tests: XCTestCase {

    override class func setUp() {
        super.setUp()
        SwiftAnalytics.removeAllBrokers()
    }
    
    func testRegisterAndUnregisterBroker() {
        let broker1 = "broker1"
        let broker2 = "broker2"
        let eventName1 = "eventName1"
        let eventName2 = "eventName2"
        SwiftAnalytics.registerBroker(name: broker1) { event in
            XCTAssertEqual(event.name, eventName1)
            XCTAssertEqual(event.kind, .event)
            SwiftAnalytics.unregisterBroker(name: broker1)
            SwiftAnalytics.registerBroker(name: broker2) { event in
                XCTAssertEqual(event.name, eventName2)
                XCTAssertEqual(event.kind, .screen)
            }
        }

        SwiftAnalytics.dispatch(event: AnalyticsEvent(name: eventName1))
        SwiftAnalytics.dispatch(event: ScreenEvent(name: eventName2))
    }
}
