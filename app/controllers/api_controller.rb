class ApiController < ApplicationController
  respond_to :json

  def explore
    @json = current_user.doorkeeper.get("api/v1/#{params[:api]}").parsed
    render json: @json
  end
end
