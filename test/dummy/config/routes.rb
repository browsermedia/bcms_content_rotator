Rails.application.routes.draw do

  mount BcmsContentRotator::Engine => "/bcms_content_rotator"
	mount_browsercms
end
