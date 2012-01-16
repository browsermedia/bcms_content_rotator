class Slide < ActiveRecord::Base
  acts_as_content_block :belongs_to_attachment => true

  def set_attachment_file_path
    if !attachment_file.blank?
      attachment.file_path = "/slides/attachment/#{Time.now.to_s(:year_month_day)}/#{name.to_slug}.#{attachment_file.original_filename.split('.').last.to_s.downcase}"
    end
  end

  def set_attachment_section
    if !attachment_file.blank?
      attachment.section = Section.first(:conditions => {:name => 'Slide'})
    end
  end

  def image_url
    attachment.file_path
  end

  # The title of the link users click on the change slides.
  def nav_title_or_name
    navigation_title.blank? ? name : navigation_title
  end

  def has_link?
    !link_url.blank?
  end
end
