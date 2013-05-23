class Event < ActiveRecord::Base
  attr_accessible :description, :user_id
  
  has_many :locations
  has_many :whens
end
