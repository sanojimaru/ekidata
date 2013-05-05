$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ekidata/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ekidata"
  s.version     = Ekidata::VERSION
  s.authors     = ["Hirohide Sano"]
  s.email       = ["sanojimaru@gmail.com"]
  s.homepage    = "http://github.com/sanojimaru/ekidata"
  s.summary     = "Japanese railway station code tools."
  s.description = "Japanese railway station code tools."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"
  s.add_dependency "activerecord-import"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
