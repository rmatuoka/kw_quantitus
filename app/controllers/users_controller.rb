class UsersController < ApplicationController
  layout "admin"
  
  access_control do
      allow :administrator, :all
  end
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.role = "user"
    if @user.save
      redirect_to user_path(@user), :notice => "Successfully created user."
    else
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id]) 
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to user_path(@user), :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, :notice => "Usuário Deletado com sucesso!"
  end    
  
  def teams
    @user = User.find(params[:id])
    @teams = @user.collaborators
  end
  
end
