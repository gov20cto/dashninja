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
    params[:width] = 1020 if params[:width].nil?
    params[:height] = 300 if params[:height].nil?
  end
  
  def burndowns
    @dashboard = Dashboard.find(params[:d])
    @projects = @scrumninja.projects
    @burndowns = []
    @projects.each do |project|
      next unless @dashboard.projects.include? project.id.to_s
      burndown = @scrumninja.project_burndown project.id
      burndown.name = project.name
      @burndowns << burndown
    end
    params[:width] = 1020 if params[:width].nil?
    params[:height] = 250 if params[:height].nil?
  end

  def bubblelist
  end

  def clock
  end

  def countdown
  end

  def grid
    @dashboard = Dashboard.find(params[:d])
    @projects = @scrumninja.projects
    @rows = []
    @stories = []
    @projects.each do |project|
      next unless @dashboard.projects.include? project.id.to_s
      stories = @scrumninja.project_stories project.id
      people = @scrumninja.project_roles project.id
      card_wall = @scrumninja.project_card_wall project.id
      
      stories.each do |story|
        story.project_name = project.name
        story.people = Set.new
        unless card_wall.nil? then 
          filtered = card_wall.find_all {|task| !task.assigned_to_user_id.nil?  && task.story_id == story.id }
          next if filtered.nil?
          unless filtered.is_a? Array then
            story.people.add people.find {|person| person.user_id == filtered.assigned_to_user_id.to_i }
          else
            filtered.each do |task|
              story.people.add people.find {|person| person.user_id == task.assigned_to_user_id.to_i }
            end
          end
        end
      end
      @stories.concat stories
    end
    @stories.sort_by! {|story| story.updated_at }.reverse!
    @stories.each do |story|
      @rows << [ story.name, story.project_name.scan(/\b[A-Z]/)*'', story.people.map {|person| person.nil? ? nil : person.user.email }, story.status ]
    end
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
