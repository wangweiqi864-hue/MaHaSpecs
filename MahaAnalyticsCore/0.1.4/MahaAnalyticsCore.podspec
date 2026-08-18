Pod::Spec.new do |s|
  s.name             = 'MahaAnalyticsCore'
  s.version          = '0.1.4'
  s.summary          = 'A lightweight analytics tracking shell used by the app.'

  s.description      = <<-DESC
MahaAnalyticsCore extracts the existing PointEvent capability into a private pod.
It keeps the current event queue behavior while exposing renamed public APIs.
  DESC

  s.homepage         = 'https://github.com/wangweiqi864-hue/MahaAnalyticsCore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangweiqi864-hue' => 'wangweiqi864-hue@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/wangweiqi864-hue/MahaAnalyticsCore.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'MahaAnalyticsCore/Classes/**/*'
  s.resources = 'MahaAnalyticsCore/PrivacyInfo.xcprivacy'
  s.dependency 'MahaLogCore'
  s.dependency 'ThinkingSDK', '~> 3.0.5'
end
