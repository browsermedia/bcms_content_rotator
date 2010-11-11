class CreateSlides < ActiveRecord::Migration
  def self.up
    create_content_table :slides do |t|
      t.string :name 
      t.string :image_url 
      t.string :alt_text 
      t.text :description 
    end
    
    
    ContentType.create!(:name => "Slide", :group_name => "Content Rotator")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Slide'])
    CategoryType.all(:conditions => ['name = ?', 'Slide']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :slide_versions
    drop_table :slides
  end
end
