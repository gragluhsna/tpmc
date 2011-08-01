class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :correct_safari_and_ie_accept_headers
 
  def correct_safari_and_ie_accept_headers
    request.accepts.sort!{ |x, y| y.to_s == 'application/xml' ? 1 : -1 } if request.xhr?
  end
end
