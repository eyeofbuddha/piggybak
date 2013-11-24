$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "piggybak/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "piggybak"
  s.version     = Piggybak::VERSION
  s.authors     = ["Steph Skardal", "Tim Case", "Brian Buchalter", "Anthony Collini"]
  s.email       = ["piggybak@endpoint.com"]
  s.homepage    = "http://www.piggybak.org/"
  s.summary     = "Mountable Ruby on Rails Ecommerce."
  s.description = "Mountable Ruby on Rails Ecommerce."

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "countries"
  s.add_dependency "rack-ssl-enforcer"
  s.add_dependency "activemerchant"
  s.add_dependency "protected_attributes"
  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency "rails_admin", "~> 0.5"
  s.add_dependency "devise", ">= 3.0.0"

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'thor'
  s.add_development_dependency 'rspec-rails', '>= 2.14.0'
  s.add_development_dependency 'factory_girl_rails', '>= 4.2.1'
  s.add_development_dependency 'capybara', '>= 2.1.0'
  s.add_development_dependency "guard", ">= 1.6.2"
  s.add_development_dependency 'guard-rspec', '>= 3.0.2'
  s.add_development_dependency "rb-fsevent", "~> 0.9.1"
  s.add_development_dependency "shoulda-matchers", ">= 2.1.0"
  s.add_development_dependency "launchy", ">= 2.2.0"
end
