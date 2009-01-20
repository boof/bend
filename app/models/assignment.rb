class Assignment < ActiveRecord::Base

  belongs_to :person
  belongs_to :marshal, :polymorphic => true

  def disposition
    raise NotImplementedError
  end

end
