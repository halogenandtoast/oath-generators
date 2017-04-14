class ExternalCredentialsController < ApplicationController
  def create
    credential = ExternalAuthentication.new(auth_hash).perform
    sign_in credential.user
    redirect_to root_path
  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end
end
