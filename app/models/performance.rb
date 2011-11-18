class Performance < ActiveRecord::Base
  belongs_to :line #, :counter_cache => true see http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html
  
  validates :video_url, presence: true, :format => URI::regexp(%w(http https))
  
end
