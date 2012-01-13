require 'browsercms'

module BcmsContentRotator
  class Engine < Rails::Engine
    include Cms::Module
  end
end