class Team < Person

  has_many :memberships
  has_many :players, :through => :memberships

end
