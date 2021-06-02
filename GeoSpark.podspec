Pod::Spec.new do |s|
  s.name                  = 'GeoSpark'
  s.version               = '3.1.3'
  s.summary               = 'iOS SDK for GeoSpark, the location intelligence platform'
  s.homepage              = 'https://geospark.co'
  s.social_media_url      = 'https://twitter.com/geosparkai'
  s.author                = { 'GeoSpark, Inc.' => 'support@geospark.co' }
  s.platform              = :ios
  s.source                = { :git => 'https://github.com/ravikanthAtGeospark/TestGeoSparkSDK.git', :tag => s.version.to_s }
  s.source_files          = 'GeoSparkSDK/GeoSpark.framework/Headers/*.h'
  s.vendored_frameworks   = 'GeoSparkSDK/GeoSpark.framework'
  s.module_map            = "GeoSparkSDK/GeoSpark.framework/Modules/module.modulemap"
  s.module_name           = 'GeoSpark'
  s.ios.deployment_target = '10.0'
  s.swift_version         = '5.0'
  s.static_framework = true
  s.dependency 'AWSIoT'
  s.dependency 'AWSMobileClient'
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.license               = { :type => 'Copyright',:text => 'Copyright (c) 2020 GeoSpark, Inc. All rights reserved.' }
end