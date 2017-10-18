$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "code_version/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "code_version"
  s.version     = CodeVersion::VERSION
  s.authors     = ["Kraiyanat Tee"]
  s.email       = ["kraiyanat@gmail.com"]
  s.homepage    = "http://kraiyanat.com"
  s.summary     = "Show git commit number of code."
  s.description = "The mountable rails engine that provide api call to get the git commit number on server (at rails root directory)"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0"
end
