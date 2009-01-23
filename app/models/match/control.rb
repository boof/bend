class Assignment::Control

  def initialize(title, png_basename, action, method = :get)
    @png_basename   = "#{ png_basename }.png"
    @action         = :"#{ http_action }_path"
    @opts           = { :title => title, :method => method }
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

  def render(tmpl, *args)
    tmpl.link_to tmpl.image_tag(png_basename), tmpl.send(action, *args), @opts
  end

end
