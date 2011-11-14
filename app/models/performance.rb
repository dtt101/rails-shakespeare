class Performance < ActiveRecord::Base
  belongs_to :line
  
  validates :video_url, presence: true
  
end
