class Location < ActiveRecord::Base
  attr_accessible :address, :event_id, :location_name, :zip

belongs_to :events

end
