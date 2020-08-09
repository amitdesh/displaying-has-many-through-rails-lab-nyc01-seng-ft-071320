class DoctorsController < ApplicationController

    def show
        @doctor = Doctor.find(params[:id])
    end

    def new
        @doctor = Doctor.new
    end

    def create
        Doctor.create(doctor_params)
        redirect_to doctor_path
    end

    private

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end

end
