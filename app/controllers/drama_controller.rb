class DramaController < ApplicationController
  
  respond_to :html, :js
  
  # TODO - show only new form on first line without performance
  # TODO - when video submitted load in YouTube player for video
  # TODO - show error when video submission fails
  # TODO - add in admin 'approved' bool for videos
  
  def index
    @scene = Scene.find(1)
    @lines = @scene.lines.order(:line_order)
    @performance = Performance.new
  end
  
  def create_performance
    @performance = Performance.new(params[:performance]) 
    # TODO - make sure approved is set to false after obj created
    line = Line.find(params[:line_id])
    respond_to do |format|
      if line.performances.push(@performance)
        format.html { redirect_to :action =>'index', notice: 'success' }
        format.js { render json: @performance, status: :created, location: @performance }
      else
        format.html { redirect_to :action => 'index', notice: 'failure' }
        format.js { render json: @performance.errors, status: :unprocessable_entity }
      end
    end    
    
  end

end
