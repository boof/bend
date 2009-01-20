# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'bc7ff06dabc043be07b39d7635bc075c'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  filter_parameter_logging :password
end

Players = Array.new(5) do |i|
  name = "Player #{ i + 1 }"
  OpenStruct.new :name => name
end
Teams = {
  'Team 1' => OpenStruct.new(:name => 'Team 1', :players => [ Players[3], Players[0] ]),
  'Team 2' => OpenStruct.new(:name => 'Team 2', :players => [ Players[1], Players[2], Players[4] ]),
  'Team 3' => OpenStruct.new(:name => 'Team 3', :players => [ Players[3], Players[4] ]),
  'Team 4' => OpenStruct.new(:name => 'Team 4', :players => [ Players[0], Players[1], Players[2]])
}
Players[0].teams = [ Teams['Team 1'], Teams['Team 4'] ]
Players[1].teams = [ Teams['Team 2'], Teams['Team 4'] ]
Players[2].teams = [ Teams['Team 2'], Teams['Team 4'] ]
Players[3].teams = [ Teams['Team 1'], Teams['Team 3'] ]
Players[4].teams = [ Teams['Team 2'], Teams['Team 3'] ]
