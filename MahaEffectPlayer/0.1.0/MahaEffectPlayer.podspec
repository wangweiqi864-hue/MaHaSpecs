Pod::Spec.new do |s|
  s.name             = 'MahaEffectPlayer'
  s.version          = '0.1.0'
  s.summary          = 'A private animation effect player that wraps EVA, SVGA, VAP, and MP4 playback flows.'

  s.description      = <<-DESC
                       MahaEffectPlayer packages the app's existing animation playback capability
                       into a private pod, including bundled rendering helpers and vendored native libraries.
                       DESC

  s.homepage         = 'https://github.com/wangweiqi864-hue/MahaEffectPlayer'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangweiqi864-hue' => 'wangweiqi864-hue@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/wangweiqi864-hue/MahaEffectPlayer.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.source_files = 'MahaEffectPlayer/Classes/**/*.{h,swift,m,mm}'
  s.frameworks = 'AVFAudio'

  s.subspec 'LibRes' do |ss|
    ss.source_files = 'MahaEffectPlayer/LibRes/include/*.h'
    ss.private_header_files = 'MahaEffectPlayer/LibRes/include/*.h'
    ss.vendored_libraries = 'MahaEffectPlayer/LibRes/*.a'
    ss.libraries = 'c++', 'sqlite3', 'z'
  end

  s.subspec 'QGVAPlayer' do |ss|
    ss.source_files = 'MahaEffectPlayer/QGVAPlayer/**/*'
    ss.resource_bundles = {
      'MahaEffectPlayer_QGVAPlayer' => ['MahaEffectPlayer/QGVAPlayer/Shaders/*.metal']
    }
    ss.frameworks = 'Metal', 'MetalKit', 'OpenGLES', 'CoreMedia', 'CoreVideo', 'QuartzCore', 'AVFoundation'
  end

  s.dependency 'MahaLogCore'
  s.dependency 'Kingfisher', '~> 7.11.0'
  s.dependency 'MahaStorageKit'
  s.dependency 'YYEVA', '~> 1.1.32'
  s.dependency 'MahaZFPlayer'
  s.dependency 'MahaZFPlayer/AVPlayer'
  s.dependency 'MahaSVGAPlayer'
  s.dependency 'MahaNetworkCore'
end
