class WelcomeController < ApplicationController
  def index
    flash[:notice] = "奥"
  end
end
