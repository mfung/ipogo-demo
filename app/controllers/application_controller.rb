class ApplicationController < ActionController::Base
  protect_from_forgery
  
  require 'simplegeo'
  SimpleGeo::Client.set_credentials("e3AGFepK9ZARUDK9fA96NxCbt9SGjsMS", "68ejHCsXSb9xMAXe5v6xLDF6hdF3VTxv")
end
