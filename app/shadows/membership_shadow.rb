class MembershipShadow < Shadows::Base

  def player
    @player ||= @membership.player
  end

  def gravatar(size = '32x32')
    image_tag player.gravatar_url(:size => size), :alt => player.name
  end

  def linked_gravatar(size = '32x32')
    link_to gravatar(size), player, :title => player.name
  end

end
