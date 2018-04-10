class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
  end
  def total
    @length = User.all.length
  end
  def show
    render json: User.find(params[:id])
  end
  def edit
      @user = User.find(params[:id])
  end
  def create
    @user = User.create( name: params[:name])
    redirect_to '/users'
  end
 
end
