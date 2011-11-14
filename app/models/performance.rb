class Performance < ActiveRecord::Base
  belongs_to :line
  
  validates :video_url, :line_id, presence: true
  
end
