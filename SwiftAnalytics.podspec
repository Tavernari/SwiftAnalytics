#
# Be sure to run `pod lib lint SwiftAnalytics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftAnalytics'
  s.version          = '0.1.2'
  s.summary          = 'SwiftAnalytics is a tool to implement all calls to event easyly'
  s.swift_versions   = [ "5.0", "4.2", "3.2" ]

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SwiftAnalytics is a tool to implement all calls to event without care about which service you will use in future, so the main idea is to keep it simple
                       DESC

  s.homepage         = 'https://github.com/Tavernari/SwiftAnalytics'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tavernari' => 'victortavernari@gmail.com' }
  s.source           = { :git => 'https://github.com/Tavernari/SwiftAnalytics.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'SwiftAnalytics/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SwiftAnalytics' => ['SwiftAnalytics/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
