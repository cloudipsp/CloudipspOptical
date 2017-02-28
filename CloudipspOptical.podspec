#
# Be sure to run `pod lib lint CloudipspOptical.podspec' to ensure this is a
# valid spec before submitting.

Pod::Spec.new do |s|
  s.name             = 'CloudipspOptical'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CloudipspOptical.'

  s.homepage         = 'https://github.com/cloudipsp/CloudipspOptical'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Maxim Kozenko' => 'max.dnu@gmail.com' }
  s.source           = { :git => 'https://github.com/cloudipsp/CloudipspOptical.git', :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.source_files = 'CloudipspOptical/Classes/**/*'
  s.public_header_files = 'CloudipspOptical/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'Cloudipsp'
  s.dependency 'CardIO'

end
