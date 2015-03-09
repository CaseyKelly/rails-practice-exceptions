class ExceptionsController < ApplicationController

  def index
    raise OverCapacity
  end

end
