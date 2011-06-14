require "digest"

class WidgetsController < ApplicationController
  def arrow
  end

  def bargraph
    @bars = [
      { :name => 'Platform', :completed => 50, :remaining => 5 },
      { :name => 'Meeting Efficiency', :completed => 63, :remaining => 4 },
      { :name => 'Legislative Management', :completed => 24, :remaining => 19 },
      { :name => 'Citizen Participation', :completed => 14, :remaining => 4 }
    ]
    params[:width] = 1080 if params[:width].nil?
    params[:height] = 300 if params[:height].nil?
  end

  def bubblelist
  end

  def clock
  end

  def countdown
  end

  def grid
    @rows = [
      ['Platform', 'Blurb', 'Blarb', ['Z@statuspanic', 'javier@granicus.com']],
      ['Meeting Efficency', 'Blurb', 'Blarb', ['Z@statuspanic', 'L@statuspanic', 'I@statuspanic']],
      ['Legislative Management', 'Blurb', 'Blarb', ['Z@statuspanic, H@statuspanic, P@statuspanic']],
      ['Citizen Participation', 'Blurb', 'Blarb', ['G@statuspanic, L@statuspanic']],
      ['EXCITING', 'Blurb', 'Blarb', ['L@statuspanic, G@statuspanic, I@statuspanic']]
    ]
  end

  def meta
  end

  def space
  end

  def weather
  end

  def newsticker
  end

  def stockticker
  end

end
