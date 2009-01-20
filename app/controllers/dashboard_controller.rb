class DashboardController < ApplicationController

  def index
    @matches = current_player.matches.find :all, :order => 'stated_at DESC'
  end

end
