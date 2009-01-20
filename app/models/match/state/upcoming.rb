class Match::State
  class Upcoming << Match::State

    def name
      'upcoming'
    end
    def controls
      [ Control.new_scoring, Control.delete_match ]
    end

  end
end
