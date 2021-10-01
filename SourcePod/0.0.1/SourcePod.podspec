Pod::Spec.new do |spec|
  spec.name         = "SourcePod"
  spec.version      = "0.0.1"
  spec.summary      = "SourcePod"
  spec.description  = <<-DESC
                        SourcePod
                      DESC
  spec.homepage     = "https://SourcePod.com"
  spec.license      = { :type => 'Copyright', :text => <<-LICENSE
                                SourcePod
                            LICENSE
                      }
 spec.author       = { "SourcePod" => "SourcePod@SourcePod.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"
  spec.swift_versions   = ['5']

  spec.source       = { :git => "https://github.com/stidch/CocoapodsIssueSourcePod", :tag => "0.0.1" }
  spec.source_files = [ "ios/SourcePod/**/*.{h,m,swift}" ]

  spec.resource = "ios/SourcePod/**/*.xcdatamodeld"

  spec.framework  = "Foundation"

  # doesn't support 'i386-apple-ios-simulator'
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.dependency "BinaryPod",  '0.0.1'
end
