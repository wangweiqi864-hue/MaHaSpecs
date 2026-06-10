Pod::Spec.new do |s|
  s.name             = 'MahaNetworkCore'
  s.version          = '0.1.0'
  s.summary          = 'A lightweight app network core with request, socket, download, and PB support.'

  s.description      = <<-DESC
MahaNetworkCore extracts the existing MHNetWork capability into a private pod.
It keeps the current networking behavior while exposing renamed core APIs.
  DESC

  s.homepage         = 'https://github.com/wangweiqi864-hue/MahaNetworkCore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangweiqi864-hue' => 'wangweiqi864-hue@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/wangweiqi864-hue/MahaNetworkCore.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'MahaNetworkCore/Classes/**/*'
  s.preserve_paths = 'proto/JMPB/**/*'

  s.dependency 'Alamofire'
  s.dependency 'CocoaAsyncSocket'
  s.dependency 'MHLog'
  s.dependency 'SwiftProtobuf', '~> 1.25.2'
  s.dependency 'KeychainAccess', '~> 4.2.2'
  s.dependency 'Starscream'
  s.dependency 'YYCache', '~> 1.0.4'
  s.dependency 'MahaAnalyticsCore'
end
