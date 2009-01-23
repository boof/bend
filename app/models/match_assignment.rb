class MatchAssignment < Assignment

  belongs_to :match, :foreign_key => 'competition_id'

end
