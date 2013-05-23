class Vote < ActiveRecord::Base
  attr_accessible :location_id, :time_id, :user_id
  
  belongs_to :locations
  belongs_to :times
  belongs_to :users
end
