Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "Thumbnail"
s.summary = "Get thumbnails of photos, videos and PDFs in Swift."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "İsa Diliballı" => "isadiliballi@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/isadiliballi/Thumbnail"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/isadiliballi/Thumbnail.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.dependency 'Alamofire', '~> 4.7'
s.dependency 'MBProgressHUD', '~> 1.1.0'

# 8
s.source_files = "Thumbnail/**/*.{swift}"

# 9
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

# 10
s.swift_version = "4.2"

end
