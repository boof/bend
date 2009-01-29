class Membership < ActiveRecord::Base

  belongs_to :team
  belongs_to :player

  def disposition
    raise NotImplementedError
  end

end
