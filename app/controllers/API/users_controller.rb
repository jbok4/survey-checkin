class Api::UsersController < ApplicationController

  before_action :find_user, only: [:update, :show, :destroy ]

   def index
    render json: User.all
   end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: { error: "This user was not created! Please try again.", status: 500 }, status: 500
    end
  end

  def show
    if @user
      render json: @user
    else
      render json: { error: "Could not locate user.", status: 404 }, status: 404
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: { error: "This user was not created! Please try again.", status: 500 }, status: 500
    end
  end

  def destroy
    @user.destroy
    render json: { message: "User was destroyed", status: 200}, status: 200
  end


private
  def user_params
    params.require(:user).permit(:name, :email, :phone, :insurance_co, :insurance_number, :reason)
  end
   
   def find_user
    @user = User.find_by_id(params[:id])
   end

end
