# SwiftAnalytics

[![CI Status](https://travis-ci.com/Tavernari/SwiftAnalytics.svg?branch=master)](https://travis-ci.com/Tavernari/SwiftAnalytics.svg?branch=master)
[![Version](https://img.shields.io/cocoapods/v/SwiftAnalytics.svg?style=flat)](https://cocoapods.org/pods/SwiftAnalytics)
[![License](https://img.shields.io/cocoapods/l/SwiftAnalytics.svg?style=flat)](https://cocoapods.org/pods/SwiftAnalytics)
[![Platform](https://img.shields.io/cocoapods/p/SwiftAnalytics.svg?style=flat)](https://cocoapods.org/pods/SwiftAnalytics)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

To register a broker
```swift 
SwiftAnalytics.registerBroker(name: "AnalyticsService") { event in
    //Call your service here like Firebase, GameAnalytics, etc...
}
```
To call an analytic event
```swift 
SwiftAnalytics.dispatch(event: AnalyticsEvent(name: eventName1))
```

To call an screen event
```swift 
SwiftAnalytics.dispatch(event: ScreenEvent(name: eventName1))
```

To creat your own event
```swift 
public class CustonEvent: Event {
    public let name: String
    public let kind: Kind = .custom("MY OWN EVENT KIND")
    public var params: [String: Any]?

    public init(name: String, customParam:Int) {
        self.name = name
        self.params = ["custom": customParam]
    }
}
```

To remove a broker
```swift 
SwiftAnalytics.unregisterBroker(name: "YOUR_BROKER_NAME")
```

## Installation

SwiftAnalytics is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftAnalytics'
```

## Author

Tavernari, victortavernari@gmail.com

## License

SwiftAnalytics is available under the MIT license. See the LICENSE file for more info.
