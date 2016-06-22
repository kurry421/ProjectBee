class ServicesController < ApplicationController
  def services
  end

  def show
  		render params[:page]
  end
end
