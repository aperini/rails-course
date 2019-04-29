class HomeController < ApplicationController
  def index
    @welcome_message = 'Welcome'
  end
  def about
    @about_us = 'About us'
  end
end
