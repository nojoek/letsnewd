class Vote < ActiveRecord::Base
  attr_accessible :location_id, :time_id, :user_id
end
