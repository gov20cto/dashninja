class HomeController < ApplicationController
  def index
    @widgets = [ 
      { :name => 'burndowns', :update => 30, :width => 1080, :class => 'middle'},
      { :name => 'grid', :update => 30, :width => 1080 }
    ]
  end
end
