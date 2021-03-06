class NewsController < ApplicationController
  before_filter :load_event_notices
  
  def index
    @news = Notice.all(:order => "created_at DESC")
  end
  
  def show
    @new = Notice.find(params[:id])
  end
end
