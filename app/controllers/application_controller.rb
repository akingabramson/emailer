class ApplicationController < ActionController::Base
  protect_from_forgery
  after_filter :set_access_control_headers

  def set_access_control_headers
    origin = request.headers["HTTP_ORIGIN"]
    if origin # && origin =~ /^.*asherkingabramson.com/
      headers['Access-Control-Allow-Origin'] = request.headers["HTTP_ORIGIN"]
      headers['Access-Control-Request-Method'] = 'POST' 
    end
  end

end
