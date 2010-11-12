module Cms::Routes
  def routes_for_bcms_content_rotator
    namespace(:cms) do |cms|
      cms.content_blocks :slides
    end  
  end
end
