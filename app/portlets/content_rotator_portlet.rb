class ContentRotatorPortlet < Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor true
     
  def render

    # Collect the list of slide_ids
    @slide_ids = []
    (1..5).each do |i|
      s_id = self.send("slide_#{i}_id")
      @slide_ids << s_id.to_i if (s_id && !s_id.empty?)
    end

    unsorted_slides = Slide.find(@slide_ids)

    # Sort slides into explicit order based on slide_ids
    @slides = []
    @slide_ids.each do |id|
      @slides << unsorted_slides.select{|item| item.id == id}.first
    end
  end
end
