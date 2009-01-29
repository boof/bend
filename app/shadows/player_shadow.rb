class PlayerShadow < Shadows::Base

  def gravatar(size = '32x32')
    image_tag @player.gravatar_url(:size => size), :alt => @name
  end

  def linked_gravatar(size = '32x32')
    link_to gravatar(size), @player, :title => @name
  end

end
