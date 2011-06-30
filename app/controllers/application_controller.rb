class ApplicationController < ActionController::Base
  before_filter :configure_scrumninja
  
  protect_from_forgery
  
  def configure_scrumninja
    if user_signed_in? then
      @scrumninja = ScrumNinja::Client.new(current_user.scrumninja_key)
    end
  end
end
