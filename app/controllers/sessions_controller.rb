class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Je bent helemaal hartstikke goed ingelogd!"
      redirect_to admin_path
    else
      flash[:danger] = "Er is iets fout aan je login informatie"
      redirect_to admin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Je bent uitgelogd"
    redirect_to admin_path
  end

end