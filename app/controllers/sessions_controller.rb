class SesssionsController < ApplicationController

  def new
  end

  def create
    @admin = Admin.find_by_email(params[:session][:email])
    if @admin && @user.authenticate(params[:session][:password])
      session[:admin_id] = @admin.id
      redirect_to admins_path(@admin)
    else
      @errors = @admin.errors.full_messages
      render 'new'
    end
  end

  def destory
    session.clear
    redirect_to root_path
  end
end
