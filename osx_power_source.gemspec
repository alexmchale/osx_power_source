# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "osx_power_source/version"

Gem::Specification.new do |s|
  s.name        = "osx_power_source"
  s.version     = OsxPowerSource::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alex McHale"]
  s.email       = ["alexmchale@gmail.com"]
  s.homepage    = "https://github.com/alexmchale/osx_power_source"
  s.summary     = %q{Gem that provides an easy interface to determine whether an OSX machine is on A/C or battery."}
  s.description = %q{}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
