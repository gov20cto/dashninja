class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /dashboards
  # GET /dashboards.xml
  def index
    @dashboards = Dashboard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dashboards }
    end
  end

  # GET /dashboards/1
  # GET /dashboards/1.xml
  def show
    @dashboard = Dashboard.find(params[:id])

    @widgets = [ 
      { :name => 'burndowns', :update => 120, :width => (@dashboard.width - 40), :class => 'middle'},
      { :name => 'grid', :update => 120, :width => (@dashboard.width - 40) }
    ]
    
    render :layout => false
  end

  # GET /dashboards/new
  # GET /dashboards/new.xml
  def new
    @dashboard = Dashboard.new
    
    @dashboard.projects = []
    
    @projects = @scrumninja.projects

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dashboard }
    end
  end

  # GET /dashboards/1/edit
  def edit
    @projects = @scrumninja.projects
    @dashboard = Dashboard.find(params[:id])
  end

  # POST /dashboards
  # POST /dashboards.xml
  def create
    @dashboard = Dashboard.new(params[:dashboard])

    respond_to do |format|
      if @dashboard.save
        format.html { redirect_to(dashboards_url, :notice => 'Dashboard was successfully created.') }
        format.xml  { render :xml => @dashboard, :status => :created, :location => @dashboard }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dashboard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dashboards/1
  # PUT /dashboards/1.xml
  def update
    @dashboard = Dashboard.find(params[:id])

    respond_to do |format|
      if @dashboard.update_attributes(params[:dashboard])
        format.html { redirect_to(dashboards_url, :notice => 'Dashboard was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dashboard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboards/1
  # DELETE /dashboards/1.xml
  def destroy
    @dashboard = Dashboard.find(params[:id])
    @dashboard.destroy

    respond_to do |format|
      format.html { redirect_to(dashboards_url) }
      format.xml  { head :ok }
    end
  end
end
