Pod::Spec.new do |s|
  s.name                  = 'MahaPagingCore'
  s.version               = '0.1.0'
  s.summary               = 'A private paging container component used by the app.'

  s.description           = <<-DESC
                              MahaPagingCore repackages the existing JXPagingView implementation
                              into a private pod and exposes renamed public APIs for the app.
                              DESC

  s.homepage              = 'https://github.com/wangweiqi864-hue/MahaPagingCore'
  s.license               = { :type => 'MIT' }
  s.author                = { 'wangweiqi864-hue' => 'wangweiqi864-hue@users.noreply.github.com' }
  s.source                = { :git => 'ssh://git.com/wangweiqi864-hue/MahaPagingCore.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.swift_versions        = ['5.0', '5.1', '5.2']
  s.requires_arc          = true
  s.frameworks            = 'UIKit'
  s.source_files          = 'MahaPagingCore/Sources/**/*.{swift}'
end
