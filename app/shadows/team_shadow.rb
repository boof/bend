class TeamShadow < Shadows::Base

  def gravatar(size = '32x32')
    image_tag @team.gravatar_url(:size => size), :alt => @team.name
  end

end
