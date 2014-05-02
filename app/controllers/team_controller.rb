class TeamController < ApplicationController
  before_filter :load_event_notices
  
  def index
    @teams = Team.all(:order => "name ASC")
  end
  
  def show
    @teams = Team.all(:order => "name ASC")
    @team = Team.find(params[:id])
  end
end
