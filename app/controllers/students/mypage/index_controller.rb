class Students::Mypage::IndexController < ApplicationController
  before_action :authenticate_student!

  def index
    render 'students/mypage/index'
  end
end
