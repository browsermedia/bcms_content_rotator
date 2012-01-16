namespace :db do
  namespace :seed do
    desc "Load the seed data from db/bcms_content_rotator.seeds.rb."
    task :bcms_content_rotator => :environment do
      require "#{Rails.root}/db/bcms_content_rotator.seeds.rb"
    end
  end
end