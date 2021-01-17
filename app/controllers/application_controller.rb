class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    if user_signed_in?
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birth_date, :gender_id, :occupation_id, :tel_number, :location_id, :profile, :image])
    elsif company_signed_in?
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :company_name, :tel_number])
    end
  end
end
