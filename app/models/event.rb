class Event < ActiveRecord::Base
  attr_accessible :start_date, :name, :link, :data
end
