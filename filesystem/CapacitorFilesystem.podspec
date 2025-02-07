require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'CapacitorFilesystem'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = 'https://capacitorjs.com'
  s.author = package['author']
  s.source = { :git => 'https://github.com/ionic-team/capacitor-plugins.git', :tag => package['name'] + '@' + package['version'] }
  s.source_files = 'ios/Sources/**/*.{swift,h,m,c,cc,mm,cpp}', 'filesystem/ios/Sources/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.vendored_frameworks = 'ios/Sources/*/IONFilesystemLib.xcframework'
  s.ios.deployment_target = '14.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.1'
end
