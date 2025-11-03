class HomeController < ApplicationController
  helper_method :resource, :resource_name, :devise_mapping

  def index
    # Deviseの変数をセット
    @resource = User.new
    @resource_name = :user
    @devise_mapping = Devise.mappings[:user]
  end

  private

  def resource
    @resource
  end

  def resource_name
    @resource_name
  end

  def devise_mapping
    @devise_mapping
  end
end
