require 'browsercms'

module Src
  class Engine < Rails::Engine
    include Cms::Module
  end
end