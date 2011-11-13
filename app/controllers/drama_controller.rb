class DramaController < ApplicationController
  
  # TODO - add in design
  # TODO - seeds.rb - add lines
  # TODO - line design
  # TODO - update README
  # TODO - Add in ability for users to submit YouTube links with email and twitter
  # TODO - look at moderation for YouTube videos
  # TODO - auth on scene, line and performance admin
  
  def index
    @scene = Scene.find(1)
    @lines = @scene.lines # TODO - order by line order
    @performance = Performance.new
  end

end
