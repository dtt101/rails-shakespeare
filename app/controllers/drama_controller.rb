class DramaController < ApplicationController
  
  respond_to :html, :js
  
  # TODO - implement counter_cache
  # TODO - handle form errors
  
  # show scene and lines (hardcoded to scene id==1)
  def index
    @scene = Scene.find(1)  
    @lines = @scene.lines.order(:line_order)
    @performance = Performance.new
  end
  
  # create a performacne for a selected line
  def create_performance
    @performance = Performance.new(params[:performance]) 
    # ensure approved is false
    @performance.approved = false
    line = Line.find(params[:line_id])
    line.performances.push(@performance)
    respond_to do |format|
      if line.performances.push(@performance)
        format.js 
      else
        format.js
      end
    end    
    
  end

end
