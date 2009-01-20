class Match::State
  class Victory < ::Match::State

    def name
      'victory'
    end
    def controls
      [ Control.edit_scoring, Control.delete_match, Control.accept_scoring ]
    end

  end
end
