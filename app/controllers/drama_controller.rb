class DramaController < ApplicationController
  
  respond_to :html, :js
  
  # TODO - show button to pop-up line and submit form, with copy about privacy
  # TODO - show error when video submission fails
  # TODO - implement counter_cache
  # TODO - admin change password
  
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
