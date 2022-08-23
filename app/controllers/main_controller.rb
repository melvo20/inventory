class MainController < ApplicationController
  def home
    @categories = Category.all
    @volunteers = Volunteer.all
  end

  def about
  end

  def contact
  end

  def calender
  end
end
