class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, only: [:new]

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :family_name, :first_name, :kana_family_name, :kana_first_name, :birthday, :postal_code, :prefecture_id, :city, :street_address, :building, :phone_number, :shoe_size])
  end
end
