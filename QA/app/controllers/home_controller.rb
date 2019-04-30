# some documentation
class HomeController < ApplicationController
  def index
    @welcome_message = 'Welcome'
  end

  def about
    @about_us = 'About us'
  end

  def temp
    redirect_to root_path
  end

  def question
    puts "entered home controller's 'question' action with id = #{params[:id]}"
  end

  def answer
    puts "entered home controller's 'answer' action with email = #{params[:email]}"
    redirect_to root_path
  end
end
