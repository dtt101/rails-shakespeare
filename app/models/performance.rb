class Performance < ActiveRecord::Base
  belongs_to :line
  
  validates :video_url, presence: true, :format => URI::regexp(%w(http https))
  
end
