class RootController < ApplicationController
  def create
    p params[:mail]
    render json: params
  end
end
