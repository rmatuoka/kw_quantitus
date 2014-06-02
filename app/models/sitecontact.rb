class Sitecontact < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :message
  
  validates_presence_of :name, :email, :phone, :message
end
