class Round < Competition

  belongs_to :match

  has_many :assignments
  has_many :people, :through => :assignment, :source => :person

end
