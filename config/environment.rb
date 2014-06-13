# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!



# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.irregular 'clothing', 'clothes'
# end

ActiveSupport::Inflector.inflections do |inflection| 
	inflection.irregular "person", "persons"
	inflection.irregular "calendar_event", "calendar_events"
end