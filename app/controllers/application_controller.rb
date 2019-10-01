class ApplicationController < ActionController::Base
  # viewでも呼び出せる
  helper_method :current_user
  before_action :login_required

  private

  def current_user
    # 既に定義されていたらsession[:user_id]、されていなかったらUser.find_by(id: session[:user_id])
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def login_required
    redirect_to login_path unless current_user
  end
end
