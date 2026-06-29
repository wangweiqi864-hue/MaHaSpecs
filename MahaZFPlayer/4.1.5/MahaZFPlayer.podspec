Pod::Spec.new do |s|
  s.name             = 'MahaZFPlayer'
  s.version          = '4.1.5'
  s.summary          = 'A private repackaging of ZFPlayer for internal iOS playback usage.'
  s.homepage         = 'https://github.com/wangweiqi864-hue/MahaZFPlayer'
  s.license          = { :type => 'MIT' }
  s.author           = {
    'renzifeng' => 'zifeng1300@gmail.com',
    'wangweiqi864-hue' => 'wangweiqi864-hue@users.noreply.github.com'
  }
  s.source           = { :git => 'https://github.com/wangweiqi864-hue/MahaZFPlayer.git', :tag => s.version.to_s }
  s.social_media_url = 'http://weibo.com/zifeng1300'
  s.ios.deployment_target = '13.0'
  s.requires_arc = true
  s.default_subspec = 'Core'
  s.resources = 'ZFPlayer/PrivacyInfo.xcprivacy'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.subspec 'Core' do |core|
    core.source_files = 'ZFPlayer/Classes/Core/**/*'
    core.public_header_files = 'ZFPlayer/Classes/Core/**/*.h'
    core.frameworks = 'UIKit', 'MediaPlayer', 'AVFoundation'
  end

  s.subspec 'ControlView' do |control_view|
    control_view.source_files = 'ZFPlayer/Classes/ControlView/**/*.{h,m}'
    control_view.public_header_files = 'ZFPlayer/Classes/ControlView/**/*.h'
    control_view.resource = 'ZFPlayer/Classes/ControlView/ZFPlayer.bundle'
    control_view.dependency 'MahaZFPlayer/Core'
  end

  s.subspec 'AVPlayer' do |av_player|
    av_player.source_files = 'ZFPlayer/Classes/AVPlayer/**/*.{h,m}'
    av_player.public_header_files = 'ZFPlayer/Classes/AVPlayer/**/*.h'
    av_player.dependency 'MahaZFPlayer/Core'
  end

  s.subspec 'ijkplayer' do |ijkplayer|
    ijkplayer.source_files = 'ZFPlayer/Classes/ijkplayer/*.{h,m}'
    ijkplayer.public_header_files = 'ZFPlayer/Classes/ijkplayer/*.h'
    ijkplayer.dependency 'MahaZFPlayer/Core'
    ijkplayer.dependency 'IJKMediaFramework'
  end
end
