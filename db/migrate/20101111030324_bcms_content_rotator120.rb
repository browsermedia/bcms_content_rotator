# Migration for v1.2.0 of bcms_content_rotator
class BcmsContentRotator120 < ActiveRecord::Migration
  def self.up
    create_content_table :slides do |t|
      t.string :name 
      t.string :link_url
      t.string :navigation_title
      t.string :alt_text 
      t.text :description
      t.belongs_to :attachment
      t.integer :attachment_version 
    end
    
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Slide'])
    CategoryType.all(:conditions => ['name = ?', 'Slide']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :slide_versions
    drop_table :slides
  end
end
