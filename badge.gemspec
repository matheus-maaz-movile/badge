# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Badge/base'

Gem::Specification.new do |spec|
  spec.name          = "badge"
  spec.version       = Badge::VERSION
  spec.authors       = ["Daniel Griesser"]
  spec.email         = ["daniel.griesser.86@gmail.com"]
  spec.summary       = Badge::DESCRIPTION
  spec.description   = Badge::VERSION
  spec.homepage      = "https://github.com/HazAT/badge"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  spec.files = Dir["lib/**/*"] + %w{ bin/badge README.md LICENSE assets/beta_badge_dark.png assets/beta_badge_light.png assets/alpha_badge_dark.png assets/alpha_badge_light.png }

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'fastlane_core', '>= 0.25.0', '< 1.0.0' # all shared code and dependencies
  spec.add_dependency 'fastimage', '~> 1.6.3' # fetch the image sizes
  spec.add_dependency 'mini_magick', '~> 4.0.2' # to add badge image on app icon

end
