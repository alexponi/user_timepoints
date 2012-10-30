class PagesController < ApplicationController
  def index
    if user_signed_in?
      if (current_user.start_at == nil)
        redirect_to action: "start"
      else 
  	    redirect_to action: "stop"
  	  end
  	end  
  end


  def start
  	@time = Time.now
  end


  def stop
  	@time = Time.now
  end

  def time
    respond_to do |format|
#      format.html { redirect_to "index" }
      format.js
    end
  end
end
