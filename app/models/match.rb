class Match < Competition
  attach_shadows

  has_many :rounds

  has_many :assignments
  has_many :people, :through => :assignment, :source => :person

  def state
    ::Match::State.new read_attribute(:state), self
  end

end
