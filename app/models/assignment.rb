class Assignment < ActiveRecord::Base

  belongs_to :person
  belongs_to :competition

  named_scope :away, :conditions => {:disposition => 'Away'}
  named_scope :home, :conditions => {:disposition => 'Home'}

end
