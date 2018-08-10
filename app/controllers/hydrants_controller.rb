class HydrantsController < ApplicationController
  def index
    render 'hydrants/index', locals: { hydrants: Hydrant.all }
  end
end
