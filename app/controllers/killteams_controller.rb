class KillteamsController < ApplicationController
  def index
    @killteams = Killteam.all
  end

  def show
    @killteam = Killteam.find(params[:id])
  end
end
