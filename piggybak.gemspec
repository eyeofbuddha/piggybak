$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "piggybak/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "piggybak"
  s.version     = Piggybak::VERSION
  s.authors     = ["Steph Skardal", "Tim Case", "Brian Buchalter"]
  s.email       = ["piggybak@endpoint.com"]
  s.homepage    = "http://www.piggybak.org/"
  s.summary     = "Mountable Ruby on Rails Ecommerce."
  s.description = "Mountable Ruby on Rails Ecommerce."

  s.files = Dir["{app,bin,config,db,lib,spec}/**/*"] + ["LICENSE", "Rakefile", "README.md","Gemfile","Gemfile.lock"]
  s.executables = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files = Dir["spec/**/*"]
  
  s.add_dependency "sqlite3"
  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "rails_admin", "~> 0.5"
  # s.add_dependency "protected_attributes", ">= 1.0"
  s.add_dependency "countries"
  s.add_dependency "activemerchant"
  s.add_dependency "devise", ">= 3.0.0.rc"
  s.add_dependency "rack-ssl-enforcer"
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '>= 2.14.0'
  s.add_development_dependency 'factory_girl_rails', '>= 4.2.1'
  s.add_development_dependency 'capybara', '>= 2.1.0'
  s.add_development_dependency 'guard-rspec', '>= 3.0.2'
end
