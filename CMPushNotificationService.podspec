#
# Be sure to run `pod lib lint CMPushNotificationService.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CMPushNotificationService'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CMPushNotificationService.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/sfl-ios/CMPushNotificationService'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1209771961@qq.com' => '1209771961' }
  s.source           = { :git => 'https://github.com/sfl-ios/CMPushNotificationService.git', :tag => "#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  # s.ios.deployment_target = '8.0'

  # s.source_files = 'CMPushNotificationService/Classes/**/*'
  s.subspec "Core" do |core|
      core.source_files = "CMPushNotificationService/Classes/Core/*.{h,m}"
      core.public_header_files = "CMPushNotificationService/Classes/Core/*.h"
      core.dependency "CMPushNotificationService/JPushLib"
      core.dependency "CMPushNotificationService/XGLib"
  end
  
  s.subspec "JPushLib" do |lib|
      lib.dependency "JPush"
  end
  
  s.subspec "XGLib" do |lib|
      lib.source_files = "CMPushNotificationService/Classes/XGPushLib/*.{h}"
      lib.vendored_libraries = "CMPushNotificationService/Classes/XGPushLib/*.{a}"
      lib.public_header_files = "CMPushNotificationService/Classes/XGPushLib/*.{h}"
  end
  
  s.requires_arc = true
  s.static_framework = true
  s.platform = :ios, "8.0"
  s.xcconfig = {'valid_archs' => 'arm64 x86_64',}
  s.frameworks = "UIKit", "CGNetwork", "CoreFoundation", "CoreTelephony", "SystemConfiguration"
  s.weak_frameworks = "UserNotifications"
  s.libraries = "resolv", "z", "sqlite3"
  
  # s.resource_bundles = {
  #   'CMPushNotificationService' => ['CMPushNotificationService/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
