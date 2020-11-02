#
# Be sure to run `pod lib lint ASVitamio.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASVitamio'
  s.version          = '1.0.4'
  s.summary          = 'AS Vitamio Player'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/asss668804'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ansen' => 'sdglyuan@gmail.com' }
  s.source           = { :git => 'https://github.com/asss668804/ASVitamio.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'ASVitamio/Classes/**/*'
  s.public_header_files = 'ASVitamio/classes/**/*.h'
  
  # s.resource_bundles = {
  #   'ASVitamio' => ['ASVitamio/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit','AVFoundation','AudioToolbox','CoreGraphics','CoreMedia','Foundation','MediaPlayer','OpenGlES','QuartzCore'
  s.libraries = 'bz2','z','stdc++','iconv'
  s.subspec 'Vitamio' do |vitamio|
    vitamio.preserve_paths = 'ASVitamio/Vendor/Vitamio/include/Vitamio/*.h'
    vitamio.source_files = 'ASVitamio/Vendor/Vitamio/include/Vitamio/*'
    vitamio.vendored_libraries = 'ASVitamio/Vendor/Vitamio/libffmpeg.a','ASVitamio/Vendor/Vitamio/libopenssl.a','ASVitamio/Vendor/Vitamio/libVitamio.a'
    vitamio.xcconfig = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/{s.name}/ASVitamio/Vendor/Vitamio/include/**' }
    # 如何导入静态库，请看http://stackoverflow.com/questions/19481125/add-static-library-to-podspec/19609714#19609714
  end

end
