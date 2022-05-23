class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render :index, status: :ok
  end

  def show

  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end

  end

  def user_info
    @user = User.find_by(name: params[:name])
    @iuser = params[:name]

    render :user_info, status: :ok
  end


  private
  def user_params
    params.require(:users).permit(:name)
  end


end
