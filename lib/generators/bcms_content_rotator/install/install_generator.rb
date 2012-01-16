require 'cms/module_installation'

class BcmsContentRotator::InstallGenerator < Cms::ModuleInstallation
  add_migrations_directory_to_source_root __FILE__

  # Add migrations to be copied, by uncommenting the following file and editing as needed.
  copy_migration_file '20101111030324_bcms_content_rotator120.rb'

  def add_seed_data_to_project
    copy_file "../bcms_content_rotator.seeds.rb", "db/bcms_content_rotator.seeds.rb"
    append_to_file "db/seeds.rb", "load File.expand_path('../bcms_content_rotator.seeds.rb', __FILE__)"
  end
end
