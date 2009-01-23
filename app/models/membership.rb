class Membership < ActiveRecord::Base
  attach_shadows

  belongs_to :team
  belongs_to :player

  def disposition
    raise NotImplementedError
  end

end
