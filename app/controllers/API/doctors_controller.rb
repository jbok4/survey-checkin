class Api::DoctorsController < ApplicationController

  before_action :find_doctor, only: [:update, :show, :destroy ]

   def index
    render json: Doctor.all
   end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render json: @doctor
    else
      render json: { error: "This doctor was not created! Please try again.", status: 500 }, status: 500
    end
  end

  def show
    if @doctor
      render json: @doctor
    else
      render json: { error: "Could not locate doctor.", status: 404 }, status: 404
    end
  end

  def update
    if @doctor.update(doctor_params)
      render json: @doctor
    else
      render json: { error: "This doctor was not created! Please try again.", status: 500 }, status: 500
    end
  end

  def destroy
    @doctor.destroy
    render json: { message: "Doctor was destroyed", status: 200}, status: 200
  end


private
  def doctor_params
    params.require(:doctor).permit(:name, :image)
  end
   
   def find_doctor
    @doctor = Doctor.find_by_id(params[:id])
   end

end