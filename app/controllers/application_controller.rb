class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_locale
    I18n.locale = user_signed_in? ? current_user.local.to_sym : 
    	I18n.default_locale
  end
end
