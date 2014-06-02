class Notice < ActiveRecord::Base
  attr_accessible :title, :summary, :full_text, :image
  
  has_attached_file :image, 
                    :styles  => { 
                      :big => "871x386#",
                      :medium => "305x173#",
                      :small => "50x50#"
                      },
                    :convert_options => {
                      :big => "-quality 70 -strip",
                      :medium => "-quality 70 -strip",
                      :small => "-quality 70 -strip" }
end
