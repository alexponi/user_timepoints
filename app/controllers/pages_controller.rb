class PagesController < ApplicationController
  def index
    if user_signed_in?
      if (current_user.start_at == nil)
        redirect_to action: "start"
      else
        if (current_user.end_at == nil) 
  	      redirect_to action: "stop"
  	    else
  	      redirect_to action: "report"
  	    end
  	  end
  	end  
  end


  def start
  end

  def report
  	# if user_signed_in?
  	#   @xhours = current_user.updated_at - current_user.start_at
  	#   @growing_hours = current_user.hours_worked + xhours
  	# end  
  end

  def stop
  end

  def time
    respond_to do |format|
#      format.html { redirect_to "index" }
      format.js
    end
  end
end
