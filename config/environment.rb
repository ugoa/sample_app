# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'tvveet', 'tvveets'
end
