#
# Run `pod_check.sh` to ensure this is a valid spec before submitting.
# Ensure that the built xcframework, this podspec and corresponding tag are all pushed to origin.
# Submit this version to Cocoapod with 'pod_push.sh'.
#
Pod::Spec.new do |s|
    s.name             = 'YbridOgg'
    s.version          = '0.6.4'
    s.summary          = 'Ogg xcframework for iOS and macOS.'
    s.description      = <<-DESC
    XCFramework to use Ogg transport layer API within Swift source.
    It runs on iOS devices, iOS simulators and macOS.
                         DESC
    s.homepage         = 'https://github.com/ybrid/ogg-swift'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Florian Nowotny' => 'Florian.Nowotny@nacamar.de' }
    s.source           = { :git => 'git@github.com:ybrid/ogg-swift.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '9.0'
    s.osx.deployment_target = '10.10'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.framework    = 'YbridOgg'
    s.vendored_frameworks = 'YbridOgg.xcframework'

  end
  