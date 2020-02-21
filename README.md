# SwiftAnalytics

[![CI Status](https://img.shields.io/travis/Tavernari/SwiftAnalytics.svg?style=flat)](https://travis-ci.com/Tavernari/SwiftAnalytics.svg?branch=master)
[![Version](https://img.shields.io/cocoapods/v/SwiftAnalytics.svg?style=flat)](https://cocoapods.org/pods/SwiftAnalytics)
[![License](https://img.shields.io/cocoapods/l/SwiftAnalytics.svg?style=flat)](https://cocoapods.org/pods/SwiftAnalytics)
[![Platform](https://img.shields.io/cocoapods/p/SwiftAnalytics.svg?style=flat)](https://cocoapods.org/pods/SwiftAnalytics)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

To register a broker
```swift 
SwiftAnalytics.registerBroker(name: "AnalyticsService") { (name, params) -> Bool in
    //Call your service here like Firebase, GameAnalytics, etc...
    return true
}
```
To call an Event
```swift 
AnalyticsEvent(name: "View will appear").dispatch(params: ["now":Date()])
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
