require 'cms/upgrades/v3_5_0'

class V130 < ActiveRecord::Migration
  
  def change
    v3_5_0_apply_namespace_to_block("BcmsContentRotator", "Slide")
  end
  
end
