class Match::State

  def self.new(name, match)
    "::Match::State::#{ name }".constantize.new match
  end
  def initialize(match)
    @match = match
  end

end
