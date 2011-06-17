class ApplicationController < ActionController::Base
  def initialize
    @scrumninja = ScrumNinja::Client.new(APP_CONFIG['scrumninja'])
    super
  end
  protect_from_forgery
end
