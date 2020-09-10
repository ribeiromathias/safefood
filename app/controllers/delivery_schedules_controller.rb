class DeliverySchedulesController < ApplicationController

  def index
    @delivery_schedules = current_user.delivery_schedules
  end

  def new
    @delivery_schedule = DeliverySchedule.new
    authorize @delivery_schedule
  end
  
  def create
    @delivery_schedule = DeliverySchedule.new(delivery_schedule_params)
    @delivery_schedule.user = current_user
    authorize @delivery_schedule

    if @delivery_schedule.save
      redirect_to delivery_schedules_path
    else
      render :new
    end
  end

  def destroy
    @delivery_schedule = DeliverySchedule.find(params[:id])
    authorize @delivery_schedule
    @delivery_schedule.destroy

    redirect_to delivery_schedules_path
  end


  private
  def delivery_schedule_params
    params.require(:delivery_schedule).permit(:day)
  end
end