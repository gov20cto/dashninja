class HomeController < ApplicationController
  def index
    @widgets = [ 
      { :name => 'burndowns', :update => 30, :width => 1000, :class => 'middle'},
      { :name => 'grid', :update => 30, :width => 1000 }
    ]
  end
end
