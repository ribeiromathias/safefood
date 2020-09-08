class DeliverySchedulesController < ApplicationController

  def index
    @delivery_schedules = current_user.delivery_schedules
  end

  def new
    @delivery_schedule = DeliverySchedule.new
  end
  
  def create
    @delivery_schedule = DeliverySchedule.new(delivery_schedule_params)
    @delivery_schedule.user = current_user

    if @delivery_schedule.save
      redirect_to delivery_schedule_path(@delivery_schedule)
    else
      render :new
    end
  end


  private
  def delivery_schedule_params
    params.require(:delivery_schedule).permit(:day)
  end
end