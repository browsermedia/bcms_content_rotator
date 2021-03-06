require 'browsercms'

module BcmsContentRotator
  class Engine < Rails::Engine
    isolate_namespace BcmsContentRotator
    include Cms::Module

    config.action_view.javascript_expansions[:bcms_content_rotator] = %w(/bcms/content_rotator/content_rotator.js)
  end
end