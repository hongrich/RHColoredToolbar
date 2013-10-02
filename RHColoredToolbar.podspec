Pod::Spec.new do |s|
  s.name         = "RHColoredToolbar"
  s.version      = "0.0.2"
  s.summary      = "A UIToolbar subclass for strong colored navigation bars on iOS 7."
  s.description  = <<-DESC
				   A drop–in `UIToolbar` subclass which allows for strong coloured navigation bars on iOS 7.

           Forked from @alanzeino's AZColoredNavigationBar (https://github.com/alanzeino/AZColoredNavigationBar).
                   DESC

  s.homepage     = "https://github.com/hongrich/RHColoredToolbar"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Rich Hong" => "hong.rich@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/hongrich/RHColoredToolbar.git", :tag => "0.0.2" }
  s.source_files = 'RHColoredToolbar'
  s.requires_arc = true
  s.framework    = 'QuartzCore'
end
