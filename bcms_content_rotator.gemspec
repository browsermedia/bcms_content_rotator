# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bcms_content_rotator/version"

Gem::Specification.new do |spec| 
  spec.name = "bcms_content_rotator"
  spec.rubyforge_project = spec.name
  spec.version = BcmsContentRotator::VERSION
  spec.summary = "A BrowserCMS module for creating a Slideshow/Homepage rotator designed to showcase site content using jQuery."
  spec.author = "BrowserMedia" 
  spec.email = "github@browsermedia.com" 
  spec.homepage = "https://github.com/browsermedia/bcms_content_rotator" 
  spec.files += Dir["app/**/*"]
  spec.files += Dir["db/migrate/*.rb"]
  spec.files -= Dir["db/migrate/*_browsercms_*.rb"]
  spec.files += Dir["lib/**/*"]
  spec.files += Dir["COPYRIGHT.txt", "GPL.txt", "LICENSE.txt", "Gemfile"]
  spec.files -= Dir['app/controllers/application_controller.rb',
                    'app/helpers/application_helper.rb',
                    'app/layouts/templates/**/*']
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README.markdown"]
  
  spec.add_dependency "browsercms", "~> 3.3.0"
end
