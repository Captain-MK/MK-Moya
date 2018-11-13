Pod::Spec.new do |s|

  s.name         = "MK-Moya"
  s.version      = "0.0.1"
  s.summary      = "A short description of MK-Moya."

  s.description  = <<-DESC
	quickly build a networking in project

   DESC

  s.homepage     = "https://github.com/Captain-MK/MK-Moya.git"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Captain-MK" => "476618228@qq.com" }
  # Or just: s.author    = ""
  # s.authors            = { "" => "" }
  s.social_media_url   = "https://github.com/Captain-MK"

  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/Captain-MK/MK-Moya.git", :tag => "#{s.version}" }
  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "Source/*.swift"
    ss.dependency "Moya", '~> 11'
    #ss.dependency "Moya/ReactiveSwift", '11'
    #ss.dependency "ObjectMapper", '~> 3.3'
    ss.framework  = "Foundation","UIKit"
  end

end
