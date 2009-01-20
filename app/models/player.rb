class Player < Person

  has_many :memberships
  has_many :teams, :through => :memberships
  has_many :assignments
  has_many :matches, :through => :assigments

end
