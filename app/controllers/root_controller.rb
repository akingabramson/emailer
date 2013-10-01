class RootController < ApplicationController
  def create
    info = params[:mail]
    email = SiteMailer.contact_email(info[:source], info[:email], info[:name], info[:message])
    
    if email.deliver
      render json: {message: "Success!"}, status: 201
    else
      render json: {error: "Failed."}, status: 422
    end   
    
  end
end
