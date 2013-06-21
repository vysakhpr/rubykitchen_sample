class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end
end
