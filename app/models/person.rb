class Person < ActiveRecord::Base
  include Gravatar

  validates_presence_of :name
  validates_uniqueness_of :email, :scope => :type

  has_many :match_assignments
  has_many :matches, :through => :match_assignments

  def other
    self.class.scoped :conditions => "people.id != #{ id }"
  end

end
