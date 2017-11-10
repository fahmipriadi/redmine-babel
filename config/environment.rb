# Load the Rails application
require File.expand_path('../application', __FILE__)

# Make sure there's no plugin in vendor/plugin before starting
vendor_plugins_dir = File.join(Rails.root, "vendor", "plugins")
if Dir.glob(File.join(vendor_plugins_dir, "*")).any?
  $stderr.puts "Plugins in vendor/plugins (#{vendor_plugins_dir}) are no longer allowed. " +
    "Please, put your Redmine plugins in the `plugins` directory at the root of your " +
    "Redmine directory (#{File.join(Rails.root, "plugins")})"
  exit 1
end



#ENV['RAILS_RELATIVE_URL_ROOT'] = "/redmine"
#config.assets.prefix = ENV['RAILS_RELATIVE_URL_ROOT']


#RedmineApp::Application.routes.default_scope = "/redmine" 
#RedmineApp::Utils::relative_url_root = "/redmine" 
# Initialize the Rails application
Rails.application.initialize!
#Redmine::Utils::relative_url_root = '/redmine'