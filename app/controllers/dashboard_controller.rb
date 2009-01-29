class DashboardController < ApplicationController

  def index
    @matches  = current_player.matches.scoped :order => 'stated_at DESC'
    @teams    = current_player.teams.scoped :order => 'name'
  end

end
