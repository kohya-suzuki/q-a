class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  def index
    if user_signed_in?
      render 'home/userpage'
    else
      render 'home/index'
    end
  end

  def show
    if user_signed_in?
      render 'home/userpage'
    else
      render 'home/index'
    end
  end

  def index
    @questions = Question.new
    @questions =Question.all
    @question = Question.new
    @question =Question.all
  end

  def new
    @user = current_user.id
  end

  
  
  

 
end
