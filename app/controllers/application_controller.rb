class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?, :authorized?, :current_admin

  def login(admin)
    session[:admin_id] = admin.id
  end

  def logged_in?
    !!current_admin
  end

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end

  def authorized?(admin)
    logged_in? && current_admin == admin
  end
end
