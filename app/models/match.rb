class Match < ActiveRecord::Base
  acts_as_presentable

  has_many :rounds

  has_many :assignments, :as => :marshal, :limit => 2
  has_many :parties, :through => :assignment, :source => :person

  has_one :home_assignment, :class_name => 'Assignment', :as => :marshal,
      :conditions => {:disposition => 'Home'}
  has_one :home_party, :through => :home_assignment, :source => :person
  has_one :away_assignment, :class_name => 'Assignment', :as => :marshal,
      :conditions => {:disposition => 'Away'}
  has_one :away_party, :through => :home_assignment, :source => :person

  def state
    ::Match::State.new read_attribute(:state), self
  end

end
