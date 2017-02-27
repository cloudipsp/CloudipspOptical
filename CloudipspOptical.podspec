#
# Be sure to run `pod lib lint CloudipspOptical.podspec' to ensure this is a
# valid spec before submitting.

Pod::Spec.new do |s|
  s.name             = 'CloudipspOptical'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CloudipspOptical.'

  s.homepage         = 'https://github.com/CloudipspOptical/ios-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Maxim Kozenko' => 'max.dnu@gmail.com' }
  s.source           = { :git => 'https://github.com/CloudipspOptical/ios-sdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'Cloudipsp'
  s.dependency 'CardIO'
  
  # s.resource_bundles = {
  #   'CloudipspOptical' => ['CloudipspOptical/Assets/*.png']
  # }

end
