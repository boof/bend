class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  AuthenticationError = Class.new ActionController::NotImplemented

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'bc7ff06dabc043be07b39d7635bc075c'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  filter_parameter_logging :password

  def current_player
    @current_player ||= begin
      Player.find_by_id session[:player_id] or
      raise AuthenticationError, 'authorized'
    end
  end
  helper_method :current_player

  def rescue_action_locally(e)
    case e
    when AuthenticationError
      player = Player.first ||
          Player.create(:name => 'Flazy', :email => 'flazy@fork.de')
      session[:player_id] = player.id

      redirect_to root_path
    else super
    end
  end
  def rescue_action_in_public(e)
    case e
    when AuthenticationError; redirect_to root_path
    else super
    end
  end

end
