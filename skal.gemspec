$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "skal/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "skal"
  s.version     = Skal::VERSION
  s.authors     = ["MP harada"]
  s.email       = ["harada@mediapl.co.jp"]
  s.homepage    = ""
  s.summary     = "Summary of Skal."
  s.description = "Description of Skal."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
	s.add_dependency "mysql2"
	s.add_dependency "nokogiri", "1.6.0"
	s.add_dependency "kaminari"
	s.add_dependency "simple_form"
	s.add_dependency "semantic-ui-sass"
	s.add_dependency "rmagick"
	s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails"
  s.add_dependency "mini_magick"
  s.add_dependency "carrierwave"
  s.add_dependency "jquery-fileupload-rails"
  s.add_dependency "sanitize"
  s.add_dependency "ckeditor"
	s.add_dependency "ransack"
	s.add_dependency "rails_engine_decorators", '~> 1.0'

	s.add_dependency "faker"
	s.add_dependency "bullet"
	s.add_dependency "pry"
	s.add_dependency "pry-rails"
	s.add_dependency "pry-nav"
	s.add_dependency "better_errors"
	s.add_dependency "binding_of_caller"

  s.add_development_dependency "sqlite3"
end
