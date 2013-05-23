class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :phone, :zip

validates_uniqueness_of :email

has_secure_password

has_many :votes
has_many :events

end