class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  class OverCapacity < StandardError; end

  rescue_from OverCapacity, with: :over_capacity

   private

     def over_capacity
       render "/public/404.html", status: 404
     end
end
