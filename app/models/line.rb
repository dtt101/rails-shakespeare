class Line < ActiveRecord::Base
  belongs_to :scene
  has_many :performances, dependent: :destroy
end
