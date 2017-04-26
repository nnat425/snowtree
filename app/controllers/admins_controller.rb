class AdminsController < ApplicationController
  before_filter :authorize, :only => [:admin_panel]

  def admin_panel
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      session[:admin_id] = @admin.id
      redirect_to admin_panel_path
    else
      @errors = @admin.errors.full_messages
      render 'new'
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:email,:password)
  end
end
