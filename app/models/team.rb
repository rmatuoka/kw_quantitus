class Team < ActiveRecord::Base
  attr_accessible :name, :company, :position, :quote, :professional, :academic, :image
  
  has_attached_file :image, 
                    :styles  => { 
                      :big => "255x255#",
                      :medium => "115x115#",
                      :small => "50x50#"
                      },
                    :convert_options => {
                      :big => "-quality 70 -strip",
                      :medium => "-quality 70 -strip",
                      :small => "-quality 70 -strip" }
end
