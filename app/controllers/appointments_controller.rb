class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :delete]
  before_action :set_all_appointments, only: [:new, :create]

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.owner = User.find(1)
    if @appointment.save
      flash[:success] = "Your appointment has been successfully confirmed."
      redirect_to users_path
    else
      render 'new'
    end
  end

  private
    def appointment_params
      params.require(:appointment).permit(:start_time, :form)
    end

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def set_all_appointments
    @all_appointments = Appointment.all
    end
end
