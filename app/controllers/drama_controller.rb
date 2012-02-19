class DramaController < ApplicationController
  
  respond_to :html, :js
  
  # TODO - implement counter_cache
  # TODO - handle form errors
  
  def index
    @scene = Scene.find(1)  
    @lines = @scene.lines.order(:line_order)
    @performance = Performance.new
  end
  
  def create_performance
    @performance = Performance.new(params[:performance]) 
    # ensure approved is false
    @performance.approved = false
    line = Line.find(params[:line_id])
    line.performances.push(@performance)
    respond_to do |format|
      # TODO - display errors in js
      # TODO - update UI on success
      if line.performances.push(@performance)
        logger.info "success"
        format.js 
      else
        logger.info "fails"
        format.js
      end
    end    
    
  end

end
