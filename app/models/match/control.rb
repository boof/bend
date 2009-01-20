class Match::Control
  attr_reader :image_basename, :http_method, :http_action, :title

  def initialize(title, image_basename, http_action, http_method = :get)
    @title          = title
    @image_basename = "#{ image_basename }.png"
    @http_action    = :"#{ http_action }_path"
    @http_method    = http_method
  end

  def self.new_scoring
    new 'Enter Scoring', :check, :new_match_scoring
  end
  def self.edit_scoring
    new 'Modify Scoring', :dash, :edit_match_scoring
  end
  def self.delete_match
    new 'Delete Match', :delete, :match, :delete
  end
  def self.accept_scoring
    new 'Accept Scoring', :check, :close_match, :put
  end

end
