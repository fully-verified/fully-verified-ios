Pod::Spec.new do |spec|

  spec.name         = "FullyVerifiedSDK"
  spec.version      = "1.49.1"
  spec.summary      = "Fully-Verified iOS SDK 1.49.1"

  spec.description  = <<-DESC
  Fully-Verified iOS SDK Version 1.49.1
                   DESC

  spec.homepage     = "https://github.com/fully-verified/fully-verified-ios.git"

  spec.license      = { :type => 'MIT', :file => 'LICENSE' }

  spec.author       = { "Fully-Verified" => "support@fully-verified.com" }
  spec.ios.deployment_target = "11.0"

  spec.source       = { :git => "https://github.com/fully-verified/fully-verified-ios.git", :tag => "#{spec.version}" }

  spec.source_files  = 'src/**/*.{h,m}'
  spec.header_mappings_dir = 'src/include'
  spec.vendored_libraries = 'src/libFullyVerifiedSDK.a'
  spec.preserve_paths = 'src/libFullyVerifiedSDK.a'
  spec.libraries = 'FullyVerifiedSDK'
  spec.resource = 'src/FullyVerifiedSDKResources.bundle'

  spec.frameworks = 'UIKit'

  spec.requires_arc = true

  spec.dependency "JSONModel", "~> 1.8"
  spec.dependency "TwilioVideo", "~> 4.4.0"
  spec.dependency "SAMKeychain", "~> 1.5.3"
  spec.dependency "SDWebImage", "~> 5.10"

end
