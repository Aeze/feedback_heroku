class AppSettings < RailsSettings::CachedSettings
  defaults[:app_name] = "App Name"
  defaults[:"about_text"] = "This is a pretty cool app and doesn't afraid of anything."
end
