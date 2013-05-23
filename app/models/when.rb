class When < ActiveRecord::Base
  attr_accessible :event_id, :time_option
  
  belongs_to :events
end
