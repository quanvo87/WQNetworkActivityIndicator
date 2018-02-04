Pod::Spec.new do |s|
    s.name             = 'WQNetworkActivityIndicator'
    s.version          = '0.1.0'
    s.summary          = 'An easy way to manage the Network Activity Indicator with multiple network requests.'
    s.description      = 'An easy way to manage the Network Activity Indicator with multiple network requests. Prevents network requests that are finishing from prematurely hiding the Network Activity Indicator if there are still other network requests in progress. Also has built in safety features like disabling the Network Activity Indicator after a timeout.'
    s.homepage         = 'https://github.com/quanvo87/WQNetworkActivityIndicator'
    s.screenshots      = 'https://github.com/quanvo87/WQNetworkActivityIndicator/blob/master/WQNetworkActivityIndicator/Assets/screenshot.png'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'quanvo87' => 'qvo1987@gmail.com', 'Wilson Ding' => 'hello@wilsonding.com' }
    s.source           = { :git => 'https://github.com/quanvo87/WQNetworkActivityIndicator.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.swift_version = '4.0.3'
    s.source_files = 'WQNetworkActivityIndicator/Classes/**/*'
end
