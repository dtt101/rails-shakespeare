class DramaController < ApplicationController
  
  # TODO - Add in ability for users to submit YouTube links with email and twitter
  # TODO - look at moderation for YouTube videos
  # TODO - auth on scene, line and performance admin
  
  def index
    @scene = Scene.find(1)
    @lines = @scene.lines # TODO - order by line order
    @performance = Performance.new
  end
  
  def new_performance
    @performance = Performance.new(params[:performance]) 
    if @performance.save
      logger.info('performace saved')
      flash[:notice] = "Your performance has been saved"
      redirect_to :action => 'index'
      #format.json { render json: @performance, status: :created, location: @performance }
    else
      logger.info('not saved')
      flash[:notice] = "Performance not created"
      redirect_to :action => 'index'
      #format.json { render json: @performance.errors, status: :unprocessable_entity }
    end
  end

end
