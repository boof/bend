class Team < Person
  attach_shadows :assigns => :attributes

  has_many :memberships
  has_many :players, :through => :memberships

end
