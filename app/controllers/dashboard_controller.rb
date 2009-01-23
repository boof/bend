class DashboardController < ApplicationController

  def index
    @matches  = current_player.matches.find :all, :order => 'stated_at DESC'
    @teams    = current_player.teams.find :all, :order => 'name'
  end

end
