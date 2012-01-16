ContentType.create!(:name => "Slide", :group_name => "Content Rotator")
unless Section.with_path('/slides').exists?
  Section.create!(:name => "Slide", :parent => Section.system_section.first, :path => '/slides', :allow_groups=>:all)
end