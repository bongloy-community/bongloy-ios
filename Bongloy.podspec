Pod::Spec.new do |s|
  s.name             = 'Bongloy'
  s.version          = '0.1.0'
  s.summary          = 'iOS library for Bongloy Payment Gateway API.'
  s.description      = 'Bongloy is the easiest way to accept payments online.'
  s.homepage         = 'https://github.com/khomsovon/bongloy-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'khomsovon' => 'sovon.khom68@gmail.com' }
  s.source           = { :git => 'https://github.com/khomsovon/bongloy-ios.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.source_files = 'Bongloy/Classes/**/*'

  # s.resource_bundles = {
  #   'Bongloy' => ['Bongloy/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Stripe', '>= 16.0.0'
end
