require 'rails-settings-ui'

#= Application-specific
#
# # You can specify a controller for RailsSettingsUi::ApplicationController to inherit from:
# 
#RailsSettingsUi.parent_controller = 'SettingsController::ApplicationController' # default: '::ApplicationController'
#
# # Render RailsSettingsUi inside a custom layout (set to 'application' to use app layout, default is RailsSettingsUi's own layout)
# RailsSettingsUi::ApplicationController.layout 'admin'

Rails.application.config.to_prepare do
  # If you use a *custom layout*, make route helpers available to RailsSettingsUi:
  # RailsSettingsUi.inline_main_app_routes!

  RailsSettingsUi::ApplicationController.module_eval do
    before_filter :authenticate_admin!
  end
end

RailsSettingsUi.setup do |config|
    config.settings_class = "AppSettings"
end