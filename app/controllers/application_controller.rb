class ApplicationController < ActionController::Base
  before_filter :require_login
  protect_from_forgery

  private
  def not_authenticated
    redirect_to login_url, :alert => "First log in to view this page."
  end
end
