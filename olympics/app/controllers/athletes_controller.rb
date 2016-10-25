class AthletesController < ApplicationController

  def index
    athletes =Athlete.all
    render :json => athletes
  end

end