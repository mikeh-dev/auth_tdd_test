class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out successfully"
  end

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      if user.activated?
        session[:user_id] = user.id
        redirect_to root_path, notice: "Logged in successfully"
      else
        redirect_to root_path, alert: "Account not activated"
      end
    else
      flash[:alert] = "Invalid email or password or account not activated"
      render :new, status: :unprocessable_entity
    end
  end
end