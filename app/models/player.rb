class Player < Person

  attach_shadows :assigns => :attributes

  has_many :memberships
  has_many :teams, :through => :memberships

end
