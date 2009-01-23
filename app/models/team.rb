class Team < Person
  attach_shadows

  has_many :memberships
  has_many :players, :through => :memberships

end
