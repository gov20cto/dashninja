class HomeController < ApplicationController
  def index
    @widgets = [ 
      { :name => 'burndowns', :update => 30, :width => 1020, :class => 'middle'},
      { :name => 'grid', :update => 30, :width => 1020 }
    ]
  end
end
