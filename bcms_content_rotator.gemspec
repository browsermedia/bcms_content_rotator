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
  
  spec.files = Dir["{app,config,db,lib}/**/*"]
  spec.files += Dir["Gemfile", "LICENSE.txt", "COPYRIGHT.txt", "GPL.txt" ]

  spec.test_files += Dir["test/**/*"]
  spec.test_files -= Dir['test/dummy/**/*']
  
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README.markdown"]
  
  spec.add_dependency("browsercms", "< 3.6.0", ">= 3.5.0.rc2")
end
