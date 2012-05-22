require 'cms/upgrades/v3_5_0'

class V130 < ActiveRecord::Migration
  
  def change
    v3_5_0_apply_namespace_to_block("BcmsContentRotator", "Slide")
  end

  # Applys table namespacing and other fixes to blocks that need upgrading from < 3.4.0 to 3.5.
  #
  # @param [String] module_name I.e. module table_prefix (i.e. BcmsWhatever)
  # @param [String] model_class_name I.e. 'Slide' or 'NewsArticle'
  def v3_5_0_apply_namespace_to_block(module_name, model_class_name)
    puts "Applying namespace '#{module_name}' to model '#{model_class_name}'"
    table_prefix = module_name.underscore
    model_name = model_class_name.underscore
     
    rename_table model_name.pluralize, "#{table_prefix}_#{model_name.pluralize}"
    rename_table "#{model_name}_versions", "#{table_prefix}_#{model_name}_versions"    
    v3_5_0_standardize_version_id_column(table_prefix, model_name)
    v3_5_0_namespace_model_data(module_name, model_class_name)
    v3_5_0_update_connector_namespaces(module_name, model_class_name)
  end
  
  def v3_5_0_standardize_version_id_column(table_prefix, model_name)    
    if column_exists?("#{table_prefix}_#{model_name}_versions", "#{model_name}_id")
      rename_column("#{table_prefix}_#{model_name}_versions", "#{model_name}_id", :original_record_id) 
    end
  end
    
  def v3_5_0_namespace_model_data(module_name, model_class_name)
    found = Cms::ContentType.named(model_class_name).first
    if found
      found.name = v3_5_0_namespace_model(module_name, model_class_name)
      found.save!
    end
  end     
  
  def v3_5_0_update_connector_namespaces(module_name, model_class_name)
    namespaced_class = v3_5_0_namespace_model(module_name, model_class_name)
    Cms::Connector.where(:connectable_type => model_class_name).each do |connector|
      connector.connectable_type = namespaced_class
      connector.save!
    end 
  end
  
  def v3_5_0_namespace_model(module_name, model_class_name)
    "#{module_name}::#{model_class_name}"
  end 
end
