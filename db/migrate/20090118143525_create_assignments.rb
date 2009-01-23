class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.string :type
      t.string :disposition
      t.integer :score
      t.references :person
      t.references :competition
    end
    add_index :assignments, [:competition_id, :person_id], :unique => true
    add_index :assignments, :type
  end

  def self.down
    drop_table :assignments
  end
end
