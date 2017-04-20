Pod::Spec.new do |s|

  s.name                 = "XHHTextView"
  s.version              = "0.0.1"
  s.summary              = "Subclass of UITextView with Placeholder"
  s.homepage             = "https://github.com/274180213/XHHTextView"
  s.license              = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "XHH" => "https://github.com/274180213" }
  s.platform             = :ios, "7.0"
  s.source               = { :git => "https://github.com/274180213/XHHTextView.git", :tag => s.version }
  s.source_files = "XHHTextView/*", "*.{h,m}" 
  s.ios.framework  = 'UIKit'
  s.requires_arc         = true

end

