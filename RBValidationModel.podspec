
Pod::Spec.new do |spec|
  spec.name              = "RBValidationModel"
  spec.version           = "1.0.0"
  spec.summary           = ""
  spec.description       = <<-DESC
                            DESC
  spec.license          = 'NCSA'
  spec.homepage         = "https://github.com/NebulaFox/RBValidationModel"

  spec.author           = { "Robbie Bykowski" => "robbie.bykowski@gmail.com" }
  spec.social_media_url = "http://twitter.com/NebulaFox"

  spec.platform         = :ios, '6.0'
  spec.source           = { :git => "https://github.com/NebulaFox/RBValidationModel.git" }
  spec.source_files     = 'RBValidationModel/*.{h,m}', 'Validators/*.{h,m}', 'Conditions/*.{h,m}'
  spec.dependency       = 'Mantle', 'US2FormValidator'
  spec.requires_arc     = true
end
