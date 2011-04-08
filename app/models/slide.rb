class Slide < ActiveRecord::Base
  acts_as_content_block
  
  def has_link?
    !link_url.blank?
  end
end
