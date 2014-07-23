class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :require_login

  def set_current_user
    User.current = current_user
  end

  def not_authenticated
    respond_to do |format|
      format.html { redirect_to login_url, :alert => "To access this page, please log in." }
      format.json { render :json => {error: 'Please authenticate.', uri: login_url}, :status => :unauthorized }
    end
  end
end
