class ApplicationController < ActionController::Base
  def initialize
    @scrumninja = ScrumNinja::Client.new(APP_CONFIG['scrumninja'])
    @project_map = {
      "platform" => "PT",
      "meeting efficiency" => "ME",
      "citizen participation" => "CP",
      "legislative management" => "LM",
    }
    super
  end
  protect_from_forgery
end
