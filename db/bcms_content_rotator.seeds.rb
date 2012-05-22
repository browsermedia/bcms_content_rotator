Cms::ContentType.create!(:name => "BcmsContentRotator::Slide", :group_name => "Content Rotator")
unless Cms::Section.with_path('/slides').exists?
  Cms::Section.create!(:name => "Slide", :parent => Cms::Section.system.first, :path => '/slides', :allow_groups=>:all)
end