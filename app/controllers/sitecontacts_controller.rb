class SitecontactsController < ApplicationController
  before_filter :load_event_notices
  
  def new
    @sitecontact = Sitecontact.new
  end
  
  def create
    @sitecontact = Sitecontact.new(params[:sitecontact])
    if @sitecontact.save
      Notifier.send_contact_adm(@sitecontact).deliver
      redirect_to [@sitecontact], :notice => "Successfully created event."
    else
      render :action => 'new'
    end
  end
  
  def show
    
  end
end
