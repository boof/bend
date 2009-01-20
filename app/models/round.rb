class Round < ActiveRecord::Base

  belongs_to :match
  has_many :assignments, :as => :marshal, :include => :person

  def home_party
    assignments.
        select { |a| a.disposition =~ /Home/ }.
        map! { |a| a.person }
  end
  def away_party
    assignments.
        select { |a| a.disposition =~ /Away/ }.
        map! { |a| a.person }
  end

end
