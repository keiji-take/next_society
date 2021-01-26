class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    if resource_class == User
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birth_date, :gender_id, :occupation_id, :tel_number, :location_id, :profile, :image])
    elsif resource_class == Company
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :company_name, :tel_number])
    else
      super
    end
  end
end
