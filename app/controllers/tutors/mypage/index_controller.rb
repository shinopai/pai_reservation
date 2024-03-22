class Tutors::Mypage::IndexController < ApplicationController
  before_action :authenticate_tutor!

  def index
    render 'tutors/mypage/index'
  end
end
