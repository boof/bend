class Match::State
  class Disputable < ::Match::State

    def name
      'disputable'
    end
    def controls
      [ Control.edit_scoring, Control.delete_match, Control.accept_scoring ]
    end

  end
end
