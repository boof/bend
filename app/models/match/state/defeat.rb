class Match::State
  class Defeat < ::Match::State

    def name
      'defeat'
    end
    def controls
      [ Control.edit_scoring, Control.delete_match, Control.accept_scoring ]
    end

  end
end
