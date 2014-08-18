class AppSettings < RailsSettings::CachedSettings
  defaults[:app_name] = "App Name"
  defaults[:app_icon] = "http://placehold.it/512x512"
  defaults[:app_header_image] = "http://placehold.it/750x200"
  defaults[:about_text] = "This is a pretty cool app and doesn't afraid of anything."
  defaults[:contact_email] = "email@company.com"
  
end
