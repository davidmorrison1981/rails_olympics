class CompetesController < ApplicationController

  def index_athlete
    competes =Compete.where( {athlete: params[:athlete_id]})
    render :json => competes.as_json(
      except: [:created_at, :updated_at, :athlete_id, :event_id],
      include: [
        {athlete: {except: [:created_at, :updated_at]}},
        {event: {except: [:created_at, :updated_at]}}])
  end

  def index_event
    competes =Compete.where( {event: params[:event_id]})
    render :json => competes.as_json(
      except: [:created_at, :updated_at, :athlete_id, :event_id],
      include: [
        {athlete: {except: [:created_at, :updated_at]}},
        {event: {except: [:created_at, :updated_at]}}])
  end

end