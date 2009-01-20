class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.string :disposition
      t.references :person
      t.references :marshal, :polymorphic => true
    end
  end

  def self.down
    drop_table :assignments
  end
end
