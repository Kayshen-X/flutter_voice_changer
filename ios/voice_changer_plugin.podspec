#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'voice_changer_plugin'
  s.version          = '0.0.1'
  s.summary          = 'Voice Changer With Six Type For Flutter'
  s.description      = <<-DESC
Voice Changer With Six Type For Flutter
                       DESC
  s.homepage         = 'https://github.com/Kayshen-X/flutter_voice_changer'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'kayshen' => 'kayshen_xu@163.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'VoiceChanger', '~> 0.0'

  s.ios.deployment_target = '8.0'
end

