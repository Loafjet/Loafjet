#
# Be sure to run `pod lib lint Loafjet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Loafjet'
  s.version          = '1.2.2'
  s.summary          = 'Loafjet is a custom library used to add Toast, Popup Card and Loading indicator in your Swift project'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'Lofjet is a Toast generator library which allows the user to add customised Toast to his project. Loafjet comes with various types of Toast animation as well as toast position. It can be used to add gradient and plain toasts. Loafjet comes with extra features like Popup Card and Loading Indicator. This Popup Cards and Loading Indicator can be customised according to the needs.'
                       DESC

  s.homepage         = 'https://github.com/gokulnair2001/Loafjet'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gokulnair2001' => '“gokulnair.2001@gmail.com”' }
  s.source           = { :git => 'https://github.com/gokulnair2001/Loafjet.git', :tag => s.version.to_s }
  s.social_media_url = 'https://github.com/gokulnair2001'

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.3'

    s.source_files = 'Source/**/*.swift'
  
  # s.resource_bundles = {
  #   'Loafjet' => ['Loafjet/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
