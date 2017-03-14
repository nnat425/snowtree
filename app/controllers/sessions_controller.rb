class SessionsController < ApplicationController

  def login
  end

  def create
    @admin = Admin.find_by_email(params[:session][:email])
    if @admin && @admin.authenticate(params[:session][:password])
      session[:admin_id] = @admin.id
      redirect_to admin_panel_path
    else
      @errors = @admin.errors.full_messages
      render 'sessions/login'
    end
  end

  def destory
    session.clear
    redirect_to root_path
  end
end
