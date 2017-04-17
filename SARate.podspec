pre_install do |installer|
      # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
      def installer.verify_no_static_framework_transitive_dependencies; end
end

Pod::Spec.new do |s|
  s.name         = "SARate"
  s.version      = "1.0.3"
  s.summary      = "SARate - SARate is a library to get positive app reviews on the AppStore."
  s.homepage     = "https://github.com/alexandergorskih/SARate"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Andrei Solovjev" => "andrei@solovjev.com" }
  s.platform     = :ios, "5.0"
  s.requires_arc = TRUE
  s.source       = { :git => "https://github.com/alexandergorskih/SARate.git", :tag => s.version.to_s }
  s.source_files = "SARate/*.{h,m}"
  s.exclude_files = "ViewController.h"
  s.resources = "SARate/*.png"
  s.dependency "iRate", "~> 1.11.4"
  s.frameworks = "UIKit", "MessageUI", "QuartzCore"
end
