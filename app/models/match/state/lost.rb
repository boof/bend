class Match::State
  class Lost < ::Match::State::Defeat

    def controls
      []
    end

  end
end
