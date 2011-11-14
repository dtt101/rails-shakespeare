class DramaController < ApplicationController
  
  respond_to :html, :js
  
  # TODO - look at moderation for YouTube videos
  # TODO - auth on scene, line and performance admin
  
  def index
    @scene = Scene.find(1)
    @lines = @scene.lines # TODO - order by line order
    @performance = Performance.new
  end
  
  def create_performance
    @performance = Performance.new(params[:performance]) 
    
    # TODO - handle save of performance to related line
    respond_to do |format|
      if @performance.save
        format.html { redirect_to :action =>'index', notice: 'success' }
        format.js { render json: @performance, status: :created, location: @performance }
      else
        format.html { redirect_to :action => 'index', notice: 'failure' }
        format.js { render json: @performance.errors, status: :unprocessable_entity }
      end
    end    
    
  end

end
