class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  def top
    render html: "personal diary's API server"
  end

end
