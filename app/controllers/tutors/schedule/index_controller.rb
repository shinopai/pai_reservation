class Tutors::Schedule::IndexController < ApplicationController
  before_action :authenticate_tutor!

  def index
    tutor = Tutor.find(params[:id])
    @schedule = tutor.schedules.build
    @schedules = Schedule.all.where("start_date >= ?", Date.current).where("start_date < ?", Date.current >> 3).order(start_date: :desc)

    render 'tutors/schedule/index'
  end
end
