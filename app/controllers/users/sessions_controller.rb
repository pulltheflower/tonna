# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  layout 'admin'
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super do |resource|
      if resource.id == 1
        return redirect_to admin_posts_path
      else
        sign_out(resource)
        return redirect_to root_path
      end 
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
