# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dragonfly-rmagick/version"

Gem::Specification.new do |s|
  s.name        = "dragonfly-rmagick"
  s.version     = Dragonfly::RMagick::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mark Evans"]
  s.email       = ["mark@new-bamboo.co.uk"]
  s.homepage    = ""
  s.summary     = %q{NOT YET NEEDED - Dragonfly 0.9 will remove RMagick parts into this gem}
  s.description = %q{RMagick libraries for processing, encoding, analysing and generating images with Dragonfly}

  s.rubyforge_project = "dragonfly-rmagick"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency("dragonfly", [">= 0.9"])
  s.add_dependency("rmagick", [">= 2.0"])
  s.add_development_dependency("rspec", [">= 2.0"])
end
