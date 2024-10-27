class HomeController < ApplicationController
  def index
    flash[:notice] = "This is a notice"
    flash[:alert] = "This is an alert"
  end
end
