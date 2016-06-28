Pod::Spec.new do |s|
  s.name             = 'DottedLineView'
  s.version          = '0.1.0'
  s.summary          = 'Draw horizontal or vertical dotted line for iOS.'

  s.description      = <<-DESC
Draw horizontal or vertical dotted line for iOS.
It can edit on Interface Builder. It is easy to use.
                       DESC

  s.homepage         = 'https://github.com/star-zero/DottedLineView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kenji Abe' => 'kenji@star-zero.com' }
  s.source           = { :git => 'https://github.com/star-zero/DottedLineView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/STAR_ZERO'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DottedLineView/Classes/**/*'
end
