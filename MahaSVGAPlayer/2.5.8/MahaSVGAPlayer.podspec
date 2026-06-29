Pod::Spec.new do |s|
  s.name         = 'MahaSVGAPlayer'
  s.version      = '2.5.8'
  s.summary      = 'MahaSVGAPlayer is a high-performance animation player for iOS.'

  s.description  = <<-DESC
                   SVGA is an animation format designed for high-performance playback.
                   This private source repository republishes the SVGAPlayer source used
                   by the app so it can be consumed from the internal CocoaPods specs repo.
                   DESC

  s.homepage     = 'https://github.com/wangweiqi864-hue/MahaSVGAPlayer'
  s.license      = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author       = {
    'PonyCui' => 'cuiminghui1@yy.com',
    'wangweiqi864-hue' => 'wangweiqi864-hue@users.noreply.github.com'
  }
  s.platform     = :ios, '13.0'
  s.ios.deployment_target = '13.0'
  s.source       = { :git => 'https://github.com/wangweiqi864-hue/MahaSVGAPlayer.git', :tag => s.version.to_s }
  s.resources    = 'Source/PrivacyInfo.xcprivacy'

  s.subspec 'Core' do |ss|
    ss.source_files  = 'Source/*.{h,m,mm}'
    ss.requires_arc = true
    ss.dependency 'SSZipArchive', '>= 1.8.1'
    ss.library = 'z'
    ss.framework = 'AVFoundation'
    ss.dependency 'MahaSVGAPlayer/ProtoFiles'
  end

  s.subspec 'ProtoFiles' do |ss|
    ss.source_files  = 'Source/pbobjc/*.{h,m,mm}'
    ss.requires_arc = false
    ss.dependency 'Protobuf', '~> 3.4'
    ss.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1',
    }
  end
end
