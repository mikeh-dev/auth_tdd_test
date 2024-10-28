class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.update(activated: true, activated_at: Time.now)
      session[:user_id] = user.id
      redirect_to root_path, notice: "Account activated successfully"
    else
      redirect_to root_path, alert: "Invalid activation link"
    end
  end
end
