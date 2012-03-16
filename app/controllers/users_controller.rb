class UsersController < ApplicationController
  
  before_filter :require_login
  
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end  
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    logger.info params
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @user = User.find(params[:id])

    respond_to do |format|
      if User.count == 1
        format.html { redirect_to user_url, notice: 'There is only one user left, you can\'t destroy it, silly' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      else 
        @user.destroy
        format.html { redirect_to users_url }
        format.json { head :ok }
      end
    end

  end
end
