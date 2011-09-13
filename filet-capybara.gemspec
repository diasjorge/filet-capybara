# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "filet-capybara/version"

Gem::Specification.new do |s|
  s.name        = "filet-capybara"
  s.version     = Filet::Capybara::VERSION
  s.authors     = ["Jorge Dias"]
  s.email       = ["jorge@mrdias.com"]
  s.homepage    = ""
  s.summary     = %q{Filet integration with capybara}
  s.description = %q{Provides out of the box integration of capybara and filet}

  s.rubyforge_project = "filet-capybara"

  s.add_dependency('filet', '~>0.2.1')
  s.add_dependency('capybara', '~>1.0')

  s.add_development_dependency('rake')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
