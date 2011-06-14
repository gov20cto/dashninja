class ApplicationController < ActionController::Base
  def initialize
    @scrumninja = ScrumNinja::Client.new(ENV['SCRUMNINJA_KEY'])
    super
  end
  protect_from_forgery
end
