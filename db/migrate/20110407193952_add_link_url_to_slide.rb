class AddLinkUrlToSlide < ActiveRecord::Migration
  def self.up
    add_content_column :slides, :link_url, :string
  end

  def self.down
    remove_column :slides, :link_url
  end
end
