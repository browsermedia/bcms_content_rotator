module Cms::Routes
  def routes_for_bcms_content_rotator
    namespace(:cms) do 
      content_blocks :slides
    end  
  end
end
