class TeamsController < ApplicationController

  sequence :new_team do
    define_person do |s|
      s.next if @team.valid?
    end
    select_players(:assign_players) do |s|
      s.last if @team.save
    end
  end

  def new
    session[:return_to] = params[:return_to] || teams_path
    walk_new_team_sequence :define_person
  end
  def create
    walk_new_team_sequence

    if new_team_sequence.finished_with? @step
      redirect_to session[:return_to]
      session[:return_to] = nil
    else
      render :action => :new
    end
  end

  def edit
  end
  def update
  end

  protected
  def assign_team
    @team = current_player.teams.new
  end
  before_filter :assign_team, :only => [:new, :create]

  def assign_team_by_id
    @team = current_player.teams.find params[:id]
  end
  before_filter :assign_team_by_id, :only => [:show, :edit, :update]

  def assign_team_attributes
    @team.attributes = params[:team]
  end
  before_filter :assign_team_attributes, :only => [:create, :update]

  def assign_players
    @players = current_player.other
  end

end
