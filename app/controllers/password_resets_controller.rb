class PasswordResetsController < ApplicationController

  def new
  end

  def create
    admin = Admin.where(email: params[:email]).first

    if admin
      admin.deliver_password_reset_instructions
      flash[:notice] = "Instructions to reset your password have been emailed to you"
      redirect_to root_path
    else
      flash.now[:error] = "No admin was found with email address #{params[:email]}"
      render :new
    end
  end

  def edit
    load_admin_using_perishable_token
    @token = @admin.perishable_token
  end

  def update
    load_admin_using_perishable_token
    @admin.password = params[:password]

    if @admin.save
      flash[:success] = "Your password was successfully updated"
      redirect_to admin_panel_path
    else
      render :edit
    end
  end
  private

  def load_admin_using_perishable_token
    @admin = Admin.where(perishable_token: params[:token]).first
    unless @admin
    flash[:error] = "We're sorry, but we could not locate your account"
    redirect_to root_url
    end
  end

end
