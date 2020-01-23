class ApplicationController < ActionController::Base

  def authorize
    if current_user
      if !current_user.admin
        flash[:alert] = "You aren't authorized to visit that page."
        redirect_to '/'
      end
    end
  end

end
