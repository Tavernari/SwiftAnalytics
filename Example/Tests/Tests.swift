import XCTest
import SwiftAnalytics
import Nimble

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
        SwiftAnalytics.registerBroker(name: broker1) { (name, _) -> Bool in
            expect(name).to(equal(eventName1))
            SwiftAnalytics.unregisterBroker(name: broker1)
            SwiftAnalytics.registerBroker(name: broker2) { (name, _) -> Bool in
                expect(name).to(equal(eventName2))
                return true
            }
            return true
        }

        AnalyticsEvent(name: eventName1).dispatch(params: [:])
        AnalyticsEvent(name: eventName2).dispatch(params: [:])
    }
}
