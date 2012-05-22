require 'cms/module_installation'

class BcmsContentRotator::InstallGenerator < Cms::ModuleInstallation
  add_migrations_directory_to_source_root __FILE__

  def copy_migrations
     rake 'bcms_content_rotator:install:migrations'
  end
  
  def add_seed_data_to_project
    copy_file "../bcms_content_rotator.seeds.rb", "db/bcms_content_rotator.seeds.rb"
    append_to_file "db/seeds.rb", "load File.expand_path('../bcms_content_rotator.seeds.rb', __FILE__)"
  end
end
